#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <sstream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/PoseArray.h"
#include <tf/tf.h>
#include <math.h>
#include <unistd.h>

#define DEG2RAD 3.141592653589793 / 180.0

//
//
//This function executes the commands for the robot to complete using the Teleoperation Tool provided by NASA.
//
//


//void chatterCallback(const geometry_msgs::PoseStamped::ConstPtr& msg)
void chatterCallback(const geometry_msgs::PoseArray::ConstPtr& msg)
{
	std::ostringstream oss;
	std::ostringstream oss_2;
	std::ostringstream arm_deploy;
	std::ostringstream arm_open;
	std::ostringstream arm_close;
	std::ostringstream close_if_open;

	std::cout << msg->header.frame_id << std::endl << std::endl << std::endl;
	

	oss.precision(3);
	oss_2.precision(3);

	oss << "rosrun executive teleop_tool -move -pos \"" << msg->poses[0].position.x << " " << -msg->poses[0].position.y << " " << -msg->poses[0].position.z << "\" -att \"" <<
	msg->poses[0].orientation.x << " " << msg->poses[0].orientation.y << " " << msg->poses[0].orientation.z << " " << msg->poses[0].orientation.w << "\"";

	if(msg->header.frame_id == "sequence"){

		oss_2 << "rosrun mobility teleop -move -pos \"" << msg->poses[1].position.x << " " << -msg->poses[1].position.y << " " << -msg->poses[1].position.z << "\" -att \"" <<
		msg->poses[0].orientation.x << " " << msg->poses[0].orientation.y << " " << msg->poses[0].orientation.z << " " << msg->poses[0].orientation.w << "\"";
	}

	arm_deploy << "rosrun arm arm_tool -deploy";
	arm_open << "rosrun arm arm_tool -open  ";
	arm_close << "rosrun arm arm_tool -close  ";
	close_if_open << "rosrun arm arm_tool -stow  ";

	ROS_INFO("Executing command");

	if(msg->header.frame_id == "sequence"){

		//Stow arm if already open
		std::string stow = close_if_open.str();
		char stow_msg[stow.length()]; 
		for (int i = 0; i < sizeof(stow_msg); i++) { 
		    stow_msg[i] = stow[i]; 
		    std::cout << stow_msg[i]; 
		} 
		system(stow_msg);

		//Approach
		std::string new_msg = oss.str();
		char system_msg[new_msg.length()]; 
		for (int i = 0; i < sizeof(system_msg); i++) { 
		    system_msg[i] = new_msg[i]; 
		    std::cout << system_msg[i]; 
		} 
		system(system_msg);

		//Deploy arm
		std::string arm_msg = arm_deploy.str();
		char system_arm_msg[arm_msg.length()]; 
		for (int i = 0; i < sizeof(system_arm_msg); i++) { 
		    system_arm_msg[i] = arm_msg[i]; 
		    std::cout << system_arm_msg[i]; 
		} 
		system(system_arm_msg);

		//Open arm
		std::string arm_open_msg = arm_open.str();
		char system_arm_open_msg[arm_open_msg.length()]; 
		for (int i = 0; i < sizeof(system_arm_open_msg); i++) { 
		    system_arm_open_msg[i] = arm_open_msg[i]; 
		    std::cout << system_arm_open_msg[i]; 
		} 
		system(system_arm_open_msg);


		//Go to setpoont
		std::string new_msg_2 = oss_2.str();
		char system_msg_2[new_msg_2.length()]; 
		for (int i = 0; i < sizeof(system_msg_2); i++) { 
		    system_msg_2[i] = new_msg_2[i]; 
		    std::cout << system_msg_2[i]; 
		} 
		system(system_msg_2);

		//Open arm
		std::string arm_close_msg = arm_close.str();
		char system_arm_close_msg[arm_close_msg.length()]; 
		for (int i = 0; i < sizeof(system_arm_close_msg); i++) { 
		    system_arm_close_msg[i] = arm_close_msg[i]; 
		    std::cout << system_arm_close_msg[i]; 
		} 
		system(system_arm_close_msg);
	}else{
		//Go straight to point
		std::string new_msg = oss.str();
		char system_msg[new_msg.length()]; 
		for (int i = 0; i < sizeof(system_msg); i++) { 
		    system_msg[i] = new_msg[i]; 
		    std::cout << system_msg[i]; 
		} 
		system(system_msg);
	}

}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "unityListener");
	ros::NodeHandle n;
	ros::Subscriber sub = n.subscribe("/unity/pose/cube", 1000, chatterCallback);

	ros::spin();
	return 0;
 }
