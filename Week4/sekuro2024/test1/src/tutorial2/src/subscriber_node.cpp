#include "ros/ros.h"
#include "tutorial2/person_data.h"

void writemsg(const tutorial2::person_data &msg){
    ROS_INFO("Name : %s", msg.name.c_str());
    ROS_INFO("Age : %ld", msg.age);
    ROS_INFO("Home : %s", msg.home.c_str());
}

int main(int argc, char **argv){
    ros::init(argc, argv, "Subscriber");
    ros::NodeHandle nh;

    ros::Subscriber topic_sub = nh.subscribe("tutorial",1000, writemsg);

    ros::spin();

    return 0; 
}