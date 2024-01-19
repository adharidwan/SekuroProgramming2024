#include "ros/ros.h"
#include "topic_day4_pkg/person.h"

int main(int argc,char ** argv){
    ros::init(argc,argv,"publisher_node");
    ros::NodeHandle nh;

    ros::Publisher person_publisher = nh.advertise<topic_day4_pkg::person>("topik_day4",1000);

    ros::Rate loop_rate(1);

    while(ros::ok()){
        topic_day4_pkg::person data;

        data.nama = "Asep Surasep";
        data.usia = 18;
        data.tinggi = 181.3;
        data.kehadiran = false;

        person_publisher.publish(data);

        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}