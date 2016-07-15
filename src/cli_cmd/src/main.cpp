
#include "tcp_socket.h"

#include "ros/ros.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Int32.h"
#include "nav_msgs/Odometry.h"



#define CLIBUFSIZE 32
#define CLIBUFTAIL 0x66
#define EXPLENTH 13
#define TELLENTH 4
#define PXPOSESTR 2
#define PYPOSEEND 9
#define SCEXPHEAD 0x41
#define SCEXPSTR 0x4e
#define SCEXPEND 0x4f
#define SCTELHEAD 0x31
#define SCTELSTR 0x3e
#define SCTELEND 0X3f
#define START 0x6e
#define END 0x6f
#define DOING 0x0f
#define DO 0x0e



#define ROSLAUNCHPATH "/opt/ros/indigo/bin/roslaunch"
#define LAUNCH "roslaunch"
#define LAUNCHPKG "glm_2d_nav"
#define LAUNCHMODE1 "glm_mode1.launch"
#define LAUNCHMODE2 "glm_mode2.launch"


#define ROSTOPICPATH "/opt/ros/indigo/bin/rostopic"
#define TOPIC "rostopic"
#define TOPICMDP "pub"
#define TOPICTOP "/move_base_simple/goal"
#define TOPICTYPE "geometry_msgs/PoseStamped"
#define TOPICARGUS	"{ header: { frame_id: \"map\" }, pose: { position: { x: %.4f, y: %.4f, z: 0 }, orientation: { x: 0, y: 0, z: 0, w: 0 } } }"


pid_t cpid ;
typedef void(*sighandler_t)(int);
void recvcmd_deal(int mode,char *cmd);






void sighand_fun(int signum)
{
	int killpid;
	int status;

	printf("sighandlerhe呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵 \n");
	kill(cpid,SIGINT);
	killpid = waitpid(cpid,&status,0);
	if(killpid == cpid)
	{
		printf("cpid %d is killed\n",cpid);
		exit(1);
	}
}

int cli_fd;

void buf_deal(char * ,int);

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


	std_msgs::Int32 pub_cli_fd;
	ros::init(argc ,argv ,"cli_cmd");
	ros::NodeHandle n;
	ros::Publisher send_pub = n.advertise<std_msgs::Int32>("cli_fd",2);


	while(1)
	{

		//连接到服务器start
		while(tcp_cli(ip,port,&cli_fd)) ; 									//循环等待连接到服务器
		printf("connect the server fd is \t%d\n",cli_fd);
		pub_cli_fd.data = cli_fd;
		send_pub.publish(pub_cli_fd);    									//将fd pub给send节点
		//连接到服务器end


		while(1)
		{
			printf("wait recv data\n");
			memset(buf_cli,0,sizeof(buf_cli));	
			if( (ret = recv(cli_fd,buf_cli,sizeof(buf_cli),0)) == 0)     	//==0:对方正常关闭导致连接断开
			{
				perror("recv error"); 										//<0:copy数据错误
				close(cli_fd);
				break;
			}else
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
	printf("recv data length is %d\n",len);
	if(EXPLENTH != len && TELLENTH != len)
	{
		printf("recv length error\n");
		return ; 
	}
	pid_t pid;

	char *pd = data;
	char head = *pd;
	int mode = 0;
	printf("recv buf is %s\n",pd);
	printf("head is %c\n",head);
	printf("head is 0x%x\n",head);

	if(head != SCEXPHEAD && head != SCTELHEAD)
	{
		printf("recv data head error!\n");
		return ;
	}


	char sta = pd[1];
	printf("status is %c\n",pd[1]);
	if((sta != START) && (sta != END))
	{
		printf("recv status error\n");
		return ;
	}

	mode = head & 0xf0 | (sta & 0x0f);
	printf("mode is %x\n",mode);
	printf("mode is %d\n",mode);
	float_char px,py;
	union{
		float x;
		float y;
		uint8_t ch[8];
	}pxy;

	char ccr = 0;
	char buf[128];

	if(SCTELHEAD == head)
	{
		if(CLIBUFTAIL == pd[2])
		{
			recvcmd_deal(mode,buf);
			return ;
		}else
		{
			printf("recv telnet data tail error\n");
			return ;
		}
	}


	if(SCEXPHEAD == head)
	{
		if(CLIBUFTAIL == pd[PYPOSEEND + 2])
		{
			for (int i = PXPOSESTR; i <= PYPOSEEND; i++)
			{
				pxy.ch[i - 2] = pd[i];
				printf("pd[%d] is %d\n",i,pd[i]);
			}
			printf("pxy.x is %f\n",pxy.x);
			printf("pxy.x is %f\n",pxy.y);
			sprintf(buf,TOPICARGUS,pxy.x,pxy.y);
			printf("%s\n",buf);

			//if(ccr != pd[PYPOSEEND + 1])
			//{
			//  printf("recv crr error!\n");
			//	return ;
			//}else
			{
				recvcmd_deal(mode,buf);
				return ;
			}
		}else
		{
			printf("recv explor data tail error\n");
			return ;
		}
	}


	recvcmd_deal(mode,buf);
	return ;

}

void recvcmd_deal(int mode,char *cmd)
{

	switch(mode)
	{
	case SCEXPSTR:
		printf("探索模式启动\n");
		break;
	case SCEXPEND:
		printf("探索模式结束\n");
		break;
	case SCTELSTR:
		printf("手动模式启动\n");
		break;
	case SCTELEND:
		printf("手动模式结束\n");
	default:
		return ;
	}
#if 0 
	int status;
	pid = fork();
	if(pid  > 0)
	{

		int killpid;
		printf("This pid is %d\n",getpid());
		printf("This child pid is %d\n",pid);
		sleep(10);

		kill(pid,SIGUSR1);
		killpid = waitpid(pid,&status,0);
		if(killpid == pid)
		{
			printf("pid is \t%d\t killpid is\t%d\n",pid,killpid);
		}
		return ;
	}

	if(0 == pid)
	{
		cpid = fork();
		if(cpid > 0)
		{
			execl(ROSLAUNCHPATH,LAUNCH,LAUNCHPKG,LAUNCHMODE1,NULL);
			printf("ppcpid is %d\n",cpid);
			signal(SIGUSR1,sighand_fun);
		}
		if(0 == cpid )
		{

			printf("ccpcpid is %d\n",getpid());
			//execl(expath ,rostopic ,pub ,topic ,type ,argus );
			execl(ROSTOPICPATH,TOPIC,TOPICMDP,TOPICTOP,TOPICTYPE,buf,NULL);
			//	execl("/opt/ros/indigo/bin/rostopic","rostopic",\
			"pub", "/move_base_simple/goal", "geometry_msgs/PoseStamped",\
				"{ header: { frame_id: \"map\" }, pose: { position: { x: 0, y: 0, z: 0 }, orientation: { x: 0, y: 0, z: 0, w: 1 } } }",\
				(char *) 0);
		}
	}
#endif

}
