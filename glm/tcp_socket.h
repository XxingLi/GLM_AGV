#ifndef TCP_SOCKET_H
#define TCP_SOCKET_H

#include<stdio.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<stdlib.h>
#include<string.h>


int socket_ser;

void tcp_cli(char* ,int , int *);





#endif
