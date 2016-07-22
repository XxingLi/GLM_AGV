
#include<stdio.h>
#include<stdlib.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<sys/socket.h>
#include<unistd.h>
#include<string.h>
#include <signal.h>

int pid , cppid;
#if 1
void sighand_fun(int signum)
{
	int killpid;
	int status;

	printf("sighandlerhe呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵 \n");
	kill(cppid,SIGINT);
	killpid = waitpid(cppid,&status,0);
	if(killpid == cppid)
	{
		printf("cpid %d is killed\n",cppid);
		exit(1);
	}
}
#endif
int main(int argc, const char *argv[])
{

	int ps;
	int killpid;
	printf(" main pid is %d\n",getpid());
	pid = fork();

	if(pid > 0)
	{
		printf(" pid > 0 is %d\n",getpid());
		sleep(5);
		kill(pid,SIGINT);
		killpid = waitpid(pid,&ps,0);
		if(pid == killpid)
		{
			printf("killpid is killed %d\n",killpid);
		}
		exit(1);
	}
	if(pid == 0)
	{
		printf(" pid = 0 is %d\n",getpid());
		cppid = fork();

		if(cppid > 0)
		{
			signal(SIGINT,sighand_fun);
			pause();
			printf(" cppid > 0 is %d\n",getpid());
			exit(1);
		}
		if(cppid == 0)
		{
			printf(" cppid = 0 is %d\n",getpid());
			exit(1);
		}
	}
	return 0;
}
