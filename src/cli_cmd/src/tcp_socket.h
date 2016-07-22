#ifndef TCP_SOCKET_H
#define TCP_SOCKET_H

#include<stdio.h>
#include<stdlib.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<sys/socket.h>
#include<sys/prctl.h>
#include<unistd.h>
#include<string.h>
#include <signal.h>


#define CLIBUFSIZE 32                   //客户端接受bufsize
#define CLIBUFTAIL 0x66                 //the tail of  data fram
#define EXPLENTH 12                     //探索模式长度
#define TELLENTH 4                      //远程模式长度
#define PXPOSESTR 2                     //探索模式命令开始位置
#define PYPOSEEND 9                     //探索模式命令结束位置
#define SCEXPHEAD 0x41                  //SC探索模式数据头
#define SCEXPSTR 0x4f                   //SC探索模式开始命令
#define SCEXPEND 0x4e                   //SC探索模式停止命令
#define SCTELHEAD 0x31                  //SC远程模式数据头
#define SCTELSTR 0x3f                   //SC远程模式开始命令
#define SCTELEND 0x3e                   //command of stop the telnet mode in SC
#define START 0x4f //0x0e                      //command of start at data fram
#define END 0x4e//0x0f
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
void expmodestart();
void expmodefinsh();
void telmodestart();
void telmodefinsh();



#endif
