#include "tcp_socket.h"

void tcp_cli (char * ip,int port,int *cli_fd)
{

	int socket_cli;
	
	if((socket_cli = socket(PF_INET,SOCK_STREAM,0)) == -1)
	{
		perror("socket");
		exit(1);
	}

	struct sockaddr_in ser_addr,cli_addr;
	memset(&ser_addr,0,sizeof(ser_addr));
	ser_addr.sin_family = PF_INET;
	ser_addr.sin_port = htons(port);
	ser_addr.sin_addr.s_addr = inet_addr(ip);

	if(connect(socket_cli,(struct sockaddr *)&ser_addr,sizeof(ser_addr)) == -1)
	{
		perror("connect");
		exit(1);
	}


	*cli_fd = socket_cli;
}

#if 0
int main(int argc, const char *argv[])
{
	int port = 5002;
	char *p = "127.0.0.1";


	int cli;


	tcp_cli(p,port,&cli);
	int n =0;
	char buf[64];
	while(1)
	{
			memset(buf,0,sizeof(buf));
			n = recv(cli,buf,sizeof(buf),0);//abc\n
			buf[strlen(buf) - 1] = '\0';
			printf("buf is %s\n",buf);
			printf("cli is %d\n",cli);
			if(strncmp(buf,"quit",4) == 0)
				break;

	}


	return 0;
}
#endif
