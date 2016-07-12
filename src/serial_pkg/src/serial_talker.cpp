#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
//#include "std_msgs/String.h"
#include "std_msgs/UInt8.h"
//#include "serial_pkg/Serial_rw.h"

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <termios.h>



#define TEST 1
#define SERIALSIZE 12

char data_stm[SERIALSIZE] = {0};     
char twistmsg[SERIALSIZE];
geometry_msgs::Twist readmsgstm;
int index_twist = 0;

int fd;

typedef union uion_data32
{
	float un_data16[2];
	char un_data8[8];
}twist16;
	

/**串口初始化
*8N1  9600
*/
void serial_init(void)
{
    struct termios options;

	fd = open("/dev/ttyUSB0",O_RDWR|O_NONBLOCK,0664);		
	if(fd < 0)
	{
		perror("fail to open ttyUSB0");
		exit(1);
	}
    
	tcgetattr(fd, &options);
	options.c_cflag |= (CLOCAL | CREAD);
	options.c_cflag &= ~CSIZE;
	options.c_cflag &= ~CRTSCTS;
	options.c_cflag |= CS8;
	options.c_cflag &= ~CSTOPB; 
	options.c_iflag |= IGNPAR;
	options.c_iflag &= ~(BRKINT | INPCK | ISTRIP | ICRNL | IXON);
    
    options.c_cc[VMIN] = 12;

	options.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG);
	options.c_oflag &= ~OPOST;

	cfsetispeed(&options, B9600);
	cfsetospeed(&options, B9600);
    
	tcsetattr(fd,TCSANOW,&options);

//	printf("serial port ok!\n");
    
}

/**串口写一个字节 *argv
*
*/
int wr_ch_ser(const char *argv)
{
	int len;	
	const char *data = argv;

	len = write(fd,data,1);

	return len;
			
}
/**串口写len个字节的字符串 *argv
*
*/
int wr_str_ser(const char *argv,int len)
{
	const char *data = argv;
	int ret = 0;
	int i ;
	for(i = 0;i < len;i ++)
	{
		ret = wr_ch_ser(data);
		if(1 == ret)
			data ++;
		else
			return ret;
	}

	return 0;
}


/**串口读一个字节*argv
*/
int rd_ch_ser(void *argv)
{
	int len;
	void *data = argv;

	len = read(fd,data,1);

	return len;
}


/**串口读len字节的字符串*argv
*/
int rd_str_ser(void *argv,int len)
{
	int i;
	char *p = (char *)argv;

	for(i = 0;i < len;i ++)
	{
		rd_ch_ser((void*)p);
		p ++;
	}
	return len;
}

/**浮点数转化为字符
*
*/
void floattochar(float f,char *s)
{
	int i;
	char *p = s;
	char *temp = (char *)&f;

	for(i = 0; i < 4; i ++)
	{
		p[i] = temp[i];
	}

}



/**订阅cmd_vel回调函数write_cb
***参数msg为topic cmd_vel发布的消息
***订阅的cmd_vel消息msg赋值给要发送到底盘的命令data_stm
*/
void write_cb(const geometry_msgs::Twist::ConstPtr& msg)
{
	int i ;
	float temp;
	char *p = data_stm;
	
	data_stm[0] = 'J';
	data_stm[1] = 'Y';
	data_stm[2] = 'C';
	
	temp = msg->linear.x;
	floattochar(temp,p + 3);
//	temp = msg->linear.y;
//	floattochar(temp,p + 7);
	temp = msg->angular.z;
	floattochar(temp,p + 7);	
#if TEST
	ROS_INFO("cmd_x :\t%f",msg->linear.x);
	ROS_INFO("cmd_y :\t%f",msg->linear.y);
	ROS_INFO("cmd_w :\t%f",msg->angular.z);
#endif
}

void updown_cb(const std_msgs::UInt8::ConstPtr& flag)
{
	data_stm[15] = flag->data;

	ROS_INFO("data_Stm[15]:\t%d",data_stm[15]);
	ROS_INFO("flag->data\t%d",flag->data);

}

geometry_msgs::Twist readsermsg(void)
{
	int len = 8;   //数据位长度，8字节
	int size = 3;
	char head[size];
	char refer[3] = {'J','Y','C'};
	char recv[9] = {0,};
	char bcc_code = 0;
	
	
	twist16 recvdata;
	geometry_msgs::Twist msg;
	
	char ch[SERIALSIZE] = {0,};
	rd_str_ser((void *)ch,SERIALSIZE);
//	wr_str_ser((const char *)ch,SERIALSIZE);


	//读数据头并比较
	int i = 0;
	for(i = 0; i < size; i ++)
	{
		if(ch[i] != refer[i])
		{
			msg =readmsgstm;
			ROS_INFO("HEAD ERROR");
			return msg;
		}
		else
		{
			head[i] = ch[i];
		}
	}
	
	for(;i < SERIALSIZE - 1;i ++)
	{
		recvdata.un_data8[i - size] = ch[i];
		ROS_INFO("data \t%d is \t%d",i - 3,ch[i]);
		bcc_code ^= ch[i];      
	}
	ROS_INFO("bcc_code \t%d",bcc_code);
	
	//比较校验码
	if((bcc_code != ch[SERIALSIZE - 1]))
	{
		msg = readmsgstm;    //校验码不正确时，使用之前的数据
		ROS_INFO("ERROR");
		return msg;
	}

	//获取速度 x w
	msg.linear.x = recvdata.un_data16[0];
	msg.angular.z = recvdata.un_data16[1];

	return msg;
}

int main(int argc, char **argv)
{
	serial_init();
	
	ros::init(argc, argv, "talker");

	ros::NodeHandle n;
	ros::NodeHandle n2;

	ros::Subscriber cmd_vel_Sub = n.subscribe("cmd_vel",1,write_cb);    //订阅	 cmd_vel topic
	
	ros::Subscriber up_down_sub = n2.subscribe("updown_flag",1,updown_cb);	//订阅updown_flag topic

	ros::Publisher chatter_pub = n.advertise<geometry_msgs::Twist>("chatter", 1);//发布chatter topic

	ros::Rate loop_rate(20);

	while (ros::ok())
	{
		//geometry_msgs::Twist msg;

		readmsgstm = readsermsg();     						//读取底盘实时数据
#if TEST 
		ROS_INFO("feedback x :\t%f",readmsgstm.linear.x);
		ROS_INFO("feedback y :\t%f",readmsgstm.linear.y);
		ROS_INFO("feedback w :\t%f",readmsgstm.angular.z);
#endif		
		chatter_pub.publish(readmsgstm);					//通过Publisher chatter_pub将底盘实时数据public到chatter
		ros::spinOnce();
		loop_rate.sleep();


		int ret = 0;
		ret = wr_str_ser(data_stm,SERIALSIZE);               //将data_stm命令发送给底盘
		
		ROS_INFO("sreial_data[15] :\t%d",data_stm[15]);
		if(0 != ret )
		{
			perror("write_cb error on 156");
			exit(1);
		}

	}

	

	return 0;
}
