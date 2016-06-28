#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "serial_pkg/Serial_rw.h"
#include "std_msgs/String.h"

#if 0
void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
	ROS_INFO("I heard: [%s]", msg->data.c_str());
}
#endif

#if 0
void chatterCallback(const geometry_msgs::Twist::ConstPtr& msg)
{
	ROS_INFO("I heard: [%c]", msg->data_r);
	ROS_INFO("I heard: [%c]", msg->data_w);

}
#endif

void chatterCallback(const geometry_msgs::Twist::ConstPtr& msg)
{
	ROS_INFO("I heard: [%c]", msg->linear.x);
	ROS_INFO("I heard: [%c]", msg->angular.z);

}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "listener");

	ros::NodeHandle n;

	ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);

	ros::spin();

	return 0;
}
