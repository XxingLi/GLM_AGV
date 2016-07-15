

#include "tcp_socket.h"

#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include "nav_msgs/Odometry.h"

#define SENDBUFSIZE 20
#define DATAPOSESTR 2
#define DATAPOSEEND 18
char sendbuf[SENDBUFSIZE] = {0};
int cli_fd;
union float_char
{
	float fvalue;
	char cvalue[4];
};

/***************************************
 *发送回调函数**************************
 *将/odom topic 的消息发送给服务器******
 *
 * *************************************/
void send_cli_cb(const nav_msgs::Odometry::ConstPtr& msg)
{
	float_char posev[4]; 
	char ccr = 0;
	printf("*****************************************************\n");
	posev[0].fvalue = msg->twist.twist.linear.x;
	posev[1].fvalue = msg->twist.twist.angular.z;
	posev[2].fvalue = msg->pose.pose.position.x;
	posev[3].fvalue = msg->pose.pose.position.y;

	printf("vx is \t%f\n",posev[0].fvalue);
	printf("vy is \t%f\n",posev[1].fvalue);
	printf("px is \t%f\n",posev[2].fvalue);
	printf("py is \t%f\n",posev[3].fvalue);
	printf("*****************************************************\n");

	sendbuf[0] = 0xbb;
	for (int i = DATAPOSESTR ; i < DATAPOSEEND; i++)
	{
		sendbuf[i] = posev[(i - 2)/4].cvalue[i%4];
		printf("sendbuf[%d]\t is \t%d\t%d\n",i,sendbuf[i],(i - 2)/4);
		ccr ^= posev[(i - 2)/4].cvalue[i];
	}

	sendbuf[DATAPOSEEND] = ccr;

	send(cli_fd,sendbuf,SENDBUFSIZE,0);

}

void cli_fd_cb (const std_msgs::Int32::ConstPtr& msg)
{
	cli_fd = msg->data;
	ROS_INFO("cli_fd send is \t%d\n",cli_fd);

}
int main(int argc, char **argv)
{
	
	ros::init(argc ,argv ,"cli_cmd_send");
	ros::NodeHandle n;
	ros::Subscriber send = n.subscribe("odom",1,send_cli_cb);
	ros::Subscriber recv_fd = n.subscribe("cli_fd",1,cli_fd_cb);
	ros::Rate loop_rate(20);

	while(ros::ok())
	{
		ros::spinOnce();
		loop_rate.sleep();
	}

	
	return 0;
}
