#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>

#include "geometry_msgs/Twist.h"


geometry_msgs::Twist msg_temp;

void chatterCallback(const geometry_msgs::Twist::ConstPtr& msg)
{
	msg_temp.linear.x = msg->linear.x;
	msg_temp.linear.y = msg->linear.y;
	msg_temp.angular.z = msg->angular.z;
      ROS_INFO("I heard x:[%f]", msg->linear.x);
}

int main(int argc, char** argv){
	ros::init(argc, argv, "odom_publisher");


	ros::NodeHandle n;
	ros::Subscriber sub = n.subscribe("chatter", 1, chatterCallback);

	ros::Publisher odom_pub = n.advertise<nav_msgs::Odometry>("odom", 1);
	tf::TransformBroadcaster odom_broadcaster;


	double x = 0.0;
	double y = 0.0;
	double th = 0.0;

	ros::Time current_time, last_time;
	current_time = ros::Time::now();
	last_time = ros::Time::now();

	ros::Rate r(25);

	while(n.ok())
	{
		double vx = msg_temp.linear.x;
		double vy = msg_temp.linear.y;
		double vth = msg_temp.angular.z;

              //ROS_INFO("vx :[%f]", vx);
	      //ROS_INFO("vy :[%f]", vy);
	      //ROS_INFO("vth:[%f]", vth);
	      //ROS_INFO("----------------------");
		ros::spinOnce();               // check for incoming messages
		current_time = ros::Time::now();

		//compute odometry in a typical way given the velocities of the robot
		double dt = (current_time - last_time).toSec();
		double delta_x = (vx * cos(th) - vy * sin(th)) * dt;
		double delta_y = (vx * sin(th) + vy * cos(th)) * dt;
		double delta_th = vth * dt;

		x += delta_x;
		y += delta_y;
		th += delta_th;
	      //ROS_INFO("odom_x\t[%f]",x);
	      //ROS_INFO("odom_y\t[%f]",y);
	      //ROS_INFO("odom_th\t[%f]",th);

		//since all odometry is 6DOF we'll need a quaternion created from yaw
		geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(th);

		//first, we'll publish the transform over tf
		geometry_msgs::TransformStamped odom_trans;
		odom_trans.header.stamp = current_time;
		odom_trans.header.frame_id = "odom";
		odom_trans.child_frame_id = "base_link";

		odom_trans.transform.translation.x = x;
		odom_trans.transform.translation.y = y;
		odom_trans.transform.translation.z = 0.0;
		odom_trans.transform.rotation = odom_quat;

		//send the transform
		odom_broadcaster.sendTransform(odom_trans);

		//next, we'll publish the odometry message over ROS
		nav_msgs::Odometry odom;
		odom.header.stamp = current_time;
		odom.header.frame_id = "odom";

		//set the position
		odom.pose.pose.position.x = x;
		odom.pose.pose.position.y = y;
		odom.pose.pose.position.z = 0.0;
		odom.pose.pose.orientation = odom_quat;

		//set the velocity
		odom.child_frame_id = "base_link";
		odom.twist.twist.linear.x = vx;
		odom.twist.twist.linear.y = vy;
		odom.twist.twist.angular.z = vth;

		//publish the message
		odom_pub.publish(odom);

		last_time = current_time;
		r.sleep();
	}

}
