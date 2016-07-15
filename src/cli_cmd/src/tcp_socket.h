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
#include <signal.h>


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


int tcp_cli(char* ,int , int *);
void buf_deal(char * ,int);



#endif
