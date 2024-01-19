#include "ros/ros.h"
#include "tutorial2/person_data.h"

int main(int argc, char **argv){
    ros::init(argc, argv, "Publisher");
    ros::NodeHandle nh;

    ros::Publisher topic_publisher = nh.advertise<tutorial2::person_data>("tutorial", 1000);
    ros::Rate loop_rate(1);

    while(ros::ok()){
        tutorial2::person_data person_data;
        person_data.name = "Ucok";
        person_data.age = 16;
        person_data.home = "Bandung";

        topic_publisher.publish(person_data);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}