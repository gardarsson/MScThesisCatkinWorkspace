#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Bool.h"
#include "std_msgs/Float64MultiArray.h"
#include "std_msgs/Float64.h"
#include "ff_msgs/JointSample.h"
#include "ff_msgs/JointSampleStamped.h"
#include <cstdlib>
#include <stdlib.h>

//This script subscribes to the joint states of the Astrobee's arm and publishes them to 
//individual topics for easy access in Unity.

class Subscriber_Publisher
{
public:
	Subscriber_Publisher() {
		pub1 = n.advertise<std_msgs::Float64>("/arm_tilt_angle", 1000);
		pub2 = n.advertise<std_msgs::Float64>("/arm_pan_angle", 1000);
		pub3 = n.advertise<std_msgs::Float64>("/arm_gripper_angle", 1000);
		//pub3 = n.advertise<std_msgs::Bool>("/arm_gripper_angle", 1000);

		sub = n.subscribe("/beh/arm/joint_sample", 1000, &Subscriber_Publisher::subscriberCallback, this);
	}

	void subscriberCallback(const ff_msgs::JointSampleStamped::ConstPtr& msg) {

		std_msgs::Float64 new_msg1;
		std_msgs::Float64 new_msg2;
		std_msgs::Float64 new_msg3;
		//std_msgs::Bool new_msg3;
	
		/*for(int i=0; i<3; i++) {
			new_msg.data.push_back(msg->samples[i].angle_pos);
			std::cout << msg->samples[i].name << std::endl;
			std::cout << new_msg.data[i] << std::endl;
		}*/
		
		/*for bool message
		if(msg->samples[2].angle_pos > 40.0){
			new_msg3.data = true;
		}else{
			new_msg3.data = false;
		}*/
		new_msg1.data = msg->samples[0].angle_pos;
		new_msg2.data = msg->samples[1].angle_pos;
		new_msg3.data = msg->samples[2].angle_pos;

		pub1.publish(new_msg1);
		pub2.publish(new_msg2);
		pub3.publish(new_msg3);
	}

private:
	ros::NodeHandle n; 
	ros::Publisher pub1;
	ros::Publisher pub2;
	ros::Publisher pub3;
	ros::Subscriber sub;

};

int main(int argc, char **argv) {

	ros::init(argc, argv, "arm_listener");
	//ros::NodeHandle n;
	//ros::Subscriber sub = n.subscribe("/beh/arm/joint_sample", 1000, subscriberCallback);

	Subscriber_Publisher obj;
	ros::spin();

	return 0;
}
