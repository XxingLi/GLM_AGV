#ifndef TCP_SOCKET_H
#define TCP_SOCKET_H

#include<stdio.h>
#include<stdlib.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<sys/socket.h>
#include<unistd.h>
#include<string.h>



int tcp_cli(char* ,int , int *);
void buf_deal(char * ,int);





#endif
