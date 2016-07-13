#include "tcp_socket.h"

int main(int argc, const char *argv[])
{
	int tcp_socket,connfd;

	if((tcp_socket = socket(PF_INET,SOCK_STREAM,0)) == -1)
	{
		perror("socket");
		exit(1);
	}

	char buf[64];
	struct sockaddr_in ser_addr,cli_addr;
	ssize_t n;


	int port;
	sscanf(argv[2],"%d",&port);
	memset(&ser_addr,0,sizeof(ser_addr));
	ser_addr.sin_family = PF_INET;
	ser_addr.sin_port = htons(port);
	ser_addr.sin_addr.s_addr = inet_addr(argv[1]);

	if(bind(tcp_socket,(struct sockaddr *)&ser_addr,sizeof(ser_addr)) == -1)
	{
		perror("bind");
		exit(1);
	}

	if(listen(tcp_socket,5) == -1)
	{
		perror("listen");
		exit(1);
	}

	memset(&cli_addr,0,sizeof(cli_addr));
	int cli_len = sizeof(cli_addr);
	int ret = 0;
	while(1)
	{
		if((connfd = accept(tcp_socket,(struct sockaddr *)&cli_addr,&cli_len)) == -1)
		{
			perror("connfd");
			exit(1);
		}

		while(1)
		{
		//	memset(buf,0,sizeof(buf));
		//	n = recv(connfd,buf,strlen(buf),0);
		//	printf("n is %d\n",n);
			
			memset(buf,0,sizeof(buf));
			fgets(buf,sizeof(buf),stdin);
			printf("send is start\n");
			if(0 > send(connfd,buf,strlen(buf),0))
			{
				close(connfd);
				break;
			}
			printf("send is end\n");
#if 0
			if(strncmp(buf,"quit",4) == 0)
			{
				close(connfd);
				break;
			}
#endif
		}

		printf("break\n");
	}
	close(tcp_socket);
	return 0;
}
