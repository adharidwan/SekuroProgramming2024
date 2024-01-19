#include "ros/ros.h"
#include "demo_pkg/pesan.h"

int main(int argc, char **argv){
    ros::init(argc,argv,"simple_publisher_node");

    ros::NodeHandle nh;

    ros::Publisher data_publisher = nh.advertise<demo_pkg::pesan>("Topik_utama",1000);

    ros::Rate loop_rate(1);

    while(ros::ok()){
        demo_pkg::pesan pesandikirim;

        pesandikirim.pesan1 = 64;
        pesandikirim.pesan2 = 18.90;
        pesandikirim.pesan3 = "Alok";

        ROS_INFO("Pesan 1: %ld", pesandikirim.pesan1);
        ROS_INFO("Pesan 2: %f", pesandikirim.pesan2);
        ROS_INFO("Pesan 3: %s", pesandikirim.pesan3.c_str());

        data_publisher.publish(pesandikirim);

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
