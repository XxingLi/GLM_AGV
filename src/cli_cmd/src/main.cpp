#include <signal.h>
#include <unistd.h>

#include "tcp_socket.h"

#include "ros/ros.h"
#include "nav_msgs/Odometry.h"

#define CLIBUFSIZE 32
#define SENDBUFSIZE 20
#define DATAPOSESTR 2
#define DATAPOSEEND 18
#define PXPOSESTR 2
#define PYPOSEEND 9
#define SCEXPHEAD 0x61
#define SCTELHEAD 0x62
#define START 0x0f
#define END 0x0e
#define DOING 0x0f
#define DO 0x0e



#define ROSLAUNCHPATH "/opt/ros/indigo/bin/roslaunch"
#define LAUNCHPKG "glm_2d_nav"
#define LAUNCHMODE1 "glm_mode1.launch"
#define LAUNCHMODE2 "glm_mode2.launch"


#define ROSTOPICPATH "/opt/ros/indigo/bin/rostopic"
#define TOPIC "rostopic"
#define TOPICMDP "pub"
#define TOPICTOP "/move_base_simple/goal"
#define TOPICTYPE "geometry_msgs/PoseStamped"
#define TOPICARGUS	"{ header: { frame_id: \"map\" }, pose: { position: { x: %.6f, y: %.6f, z: 0 }, orientation: { x: 0, y: 0, z: 0, w: 0 } } }"



int cli_fd;
char sendbuf[SENDBUFSIZE] = {0};

void buf_deal(char * ,int);
void send_cli_cb(const nav_msgs::Odometry::ConstPtr &msg);

union float_char
{
	float fvalue;
	char cvalue[4];
};


int main(int argc, char **argv)
{

	//检测输入参数个数是否正确
	if(argc != 3)
	{
		perror("argv num is error");
		exit(1);
	}

	char buf_cli[CLIBUFSIZE];
	int ret = 0;

	int port;
	char *ip = (char*)argv[1];
	sscanf(argv[2],"%d",&port);
#if 1 
	ros::init(argc ,argv ,"cli_cmd");
	ros::NodeHandle n;
	ros::Subscriber send = n.subscribe("odom",1,send_cli_cb);
	ros::Rate loop_rate(20);
#endif

	while(ros::ok())
	{

		//连接到服务器start
		while(tcp_cli(ip,port,&cli_fd)) ;
		printf("connect the server fd is \t%d\n",cli_fd);
		//连接到服务器end
		

		while(ros::ok())
		{
			
			ros::spinOnce();
			loop_rate.sleep();
			memset(buf_cli,0,sizeof(buf_cli));	

			if( (ret = recv(cli_fd,buf_cli,sizeof(buf_cli),0)) <= 0)     	//==0:对方正常关闭导致连接断开
			{
				perror("recv error"); 										//<0:copy数据错误
				close(cli_fd);
				break;

			}
			else
			{
				printf("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
				buf_deal(buf_cli,ret);
			}
			
		}
	}

	return 0;

}



void buf_deal(char *data ,int len)
{

	pid_t pid;

	char *pd = data;
	char head = *pd;
	float_char px,py;
	union{
	float x;
	float y;
	uint8_t ch[8];
	}pxy;



	char ccr = 0;
	char buf[128];

	for (int i = PXPOSESTR; i <= PYPOSEEND; i++)
	{
		pxy.ch[i - 2] = pd[i];
		printf("pd[%d] is %d\n",i,pd[i]);
	}
	printf("pxy.x is %f\n",pxy.x);
	printf("pxy.x is %f\n",pxy.y);
	sprintf(buf,TOPICARGUS,pxy.x,pxy.y);
	printf("%s\n",buf);

	switch(head)
	{
	case SCEXPHEAD:
		printf("head is SCEXPHEAD %c\n",head);
		break;
	case SCTELHEAD:
		printf("head is SCTELHEAD %c\n",head);
		break;
	default:
		return ;
	}


#if 0
	int status;
	int killpid;
	pid = fork();
	if(pid  > 0)
	{

		printf("!!!!!!!\n");
		sleep(3);

		kill(pid,SIGKILL);

		killpid = waitpid(pid,&status,0);
		if(killpid == pid)
		{
			printf("pid is%dkillpid is%d\n",pid,killpid);

		}
	}

	if(0 == pid)
	{

		printf("chil  pid is %d\n",getpid());

		//execl(expath ,rostopic ,pub ,topic ,type ,argus );
		execl(ROSTOPICPATH,TOPIC,TOPICMDP,TOPICTOP,TOPICTYPE,buf,(char *) 0);
		//	execl("/opt/ros/indigo/bin/rostopic","rostopic",\
		"pub", "/move_base_simple/goal", "geometry_msgs/PoseStamped",\
			"{ header: { frame_id: \"map\" }, pose: { position: { x: 0, y: 0, z: 0 }, orientation: { x: 0, y: 0, z: 0, w: 1 } } }",\
			(char *) 0);

		printf("hello \n");
	}
#endif

}
/***************************************
 *发送回调函数**************************
 *将/odom topic 的消息发送给服务器******
 *
 * *************************************/
void send_cli_cb(const nav_msgs::Odometry::ConstPtr& msg)
{
	float_char posev[4]; 
	char ccr = 0;
	printf("*****************************************************\n");
	posev[0].fvalue = msg->twist.twist.linear.x;
	posev[1].fvalue = msg->twist.twist.angular.z;
	posev[2].fvalue = msg->pose.pose.position.x;
	posev[3].fvalue = msg->pose.pose.position.y;

	printf("vx is \t%f\n",posev[0].fvalue);
	printf("vy is \t%f\n",posev[1].fvalue);
	printf("px is \t%f\n",posev[2].fvalue);
	printf("py is \t%f\n",posev[3].fvalue);
	printf("*****************************************************\n");

	sendbuf[0] = 0xbb;
	for (int i = DATAPOSESTR ; i < DATAPOSEEND; i++)
	{
		sendbuf[i] = posev[(i - 2)/4].cvalue[i%4];
		printf("sendbuf[%d] is %d\t%d\n",i,sendbuf[i],(i - 2)/4);
		ccr ^= posev[(i - 2)/4].cvalue[i];
	}

	sendbuf[DATAPOSEEND] = ccr;

	send(cli_fd,sendbuf,SENDBUFSIZE,0);


#if 0
	float_char px,py,pz,vx,vy,vz;

	px.fvalue = msg->pose.pose.position.x;
	py.fvalue = msg->pose.pose.position.y;
	pz.fvalue = msg->pose.pose.position.z;

	vx.fvalue = msg->twist.twist.linear.x;
	vy.fvalue = msg->twist.twist.linear.y;
	vz.fvalue = msg->twist.twist.angular.z;

	buf[0] = px.cvalue[0];
	buf[1] = px.cvalue[1];
	buf[0] = px.cvalue[2];
	buf[3] = px.cvalue[3];
#endif

}
