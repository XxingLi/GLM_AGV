#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>

#include "tcp_socket.h"



#define CLIBUFSIZE 32
#define SENDBUFSIZE 32
#define ROSTOPICPATH "/opt/ros/indigo/bin/rostopic"
#define TOPIC "rostopic"
#define TOPICMDP "pub"
#define TOPICTOP "/move_base_simple/goal"
#define TOPICTYPE "geometry_msgs/PoseStamped"
#define TOPICARGUS	"{ header: { frame_id: \"map\" }, pose: { position: { x: %.3f, y: %.3f, z: 0 }, orientation: { x: 0, y: 0, z: 0, w: 0 } } }"



void buf_deal(char *data ,int len);


int main(int argc, const char *argv[])
{

	//检测输入参数个数是否正确
	if(argc != 3)
	{
		perror("argv num is error");
		exit(1);
	}

	//连接到服务器start
	int port;
	char *ip = (char*)argv[1];
	int cli_fd;
	sscanf(argv[2],"%d",&port);
	tcp_cli(ip,port,&cli_fd);
	//连接到服务器end



	char buf_cli[CLIBUFSIZE];
	int ret = 0;

	printf("!!!!!!!!!!!!!!!!!!\n");
	while(1)
	{

		memset(buf_cli,0,sizeof(buf_cli));	

		if( (ret = recv(cli_fd,buf_cli,sizeof(buf_cli),0)) <= 0)     	//==0:对方正常关闭导致连接断开
		{
			printf("recv error\n"); 								//<0:copy数据错误
		}
		else
		{

			printf("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
			buf_deal(buf_cli,ret);

		}

	}


//execl("/opt/ros/indigo/bin/rostopic","rostopic","echo","/move_base_simple/goal",(char *)0);


return 0;

}



void buf_deal(char *data ,int len)
{

	pid_t pid;

	float ff = 1.234;
	char buf[128]; 

	sprintf(buf,TOPICARGUS,ff,ff,ff);
	printf("%s\n",buf);

	pid = fork();
	if(pid  > 0)
	{

		printf("!!!!!!!\n");
		sleep(3);

		printf("pid is %d\n",pid);
		kill(pid,SIGKILL);
		wait();
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

}

