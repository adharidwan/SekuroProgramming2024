#include "ros/ros.h"
#include "demo_pkg/pesan.h"


void callBackHandler(const demo_pkg::pesan::ConstPtr &msg){
    ROS_INFO("\n saya mendengar: /n");
    ROS_INFO("pesan pertama : %ld",msg->pesan1);
    ROS_INFO("pesan kedua : %lf", msg->pesan2);
    ROS_INFO("pesan ketiga : %s", msg->pesan3.c_str());
}

int main(int argc, char ** argv){
    ros::init(argc,argv,"simple_subscriber_node");

    ros::NodeHandle nh;

    ros::Subscriber data_subscriber = nh.subscribe("Topik_utama",1000,callBackHandler);

    ros::spin();

    return 0;
}