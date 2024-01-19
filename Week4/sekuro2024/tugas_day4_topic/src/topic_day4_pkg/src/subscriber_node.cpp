#include "ros/ros.h"
#include "topic_day4_pkg/person.h"

void callBackHandler(const topic_day4_pkg::person::ConstPtr &msg){
    ROS_INFO("Nama : %s", msg->nama.c_str());
    ROS_INFO("Usia : %ld", msg->usia);
    ROS_INFO("Tinggi : %lf", msg->tinggi);
    std::string cekhadir = (msg->kehadiran) ? "Hadir" : "Tidak Hadir";
    ROS_INFO("Kehadiran : %s", cekhadir.c_str());
}

int main(int argc, char ** argv){
    ros::init(argc,argv,"subscriber_node");
    ros::NodeHandle nh;

    ros::Subscriber person_subscriber = nh.subscribe("topik_day4",1000,callBackHandler);

    ros::spin();

    return 0;
}