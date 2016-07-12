

#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>
#include <string.h>


void test()
{

	pid_t pid;

	pid = fork();
	if(pid  > 0)
	{
		int status;
		printf("***********************************\n");
		sleep(3);
		int ret = kill(pid,SIGKILL);

		printf("kill iss pid =%d\n",ret);
		int pp = wait(&status);
		printf("child’s pid =%d\n",pp);
	}
	if(0 == pid)
	{

		execl("/opt/ros/indigo/bin/rostopic","rostopic",\
				"pub", "/move_base_simple/goal", "geometry_msgs/PoseStamped",\
				"{ header: { frame_id: \"map\" }, pose: { position: { x: 0, y: 0, z: 0 }, orientation: { x: 0, y: 0, z: 0, w: 1 } } }",\
				(char *) 0);

		printf("hello \n");
	}

}
int main(int argc, const char *argv[])
{
	char buf[32];
	while(1)
	{
		printf("hello!!!!!!!!!!!!!!!!!!!\n");
		
		memset(buf,0,sizeof(buf));
		fgets(buf,sizeof(buf),stdin);
		printf("buf is %s\n",buf);
		sleep(1);
		if( strncmp(buf,"start",5) == 0)
		{
			printf("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n");
			test();	
		}
	}
	return 0;
}



