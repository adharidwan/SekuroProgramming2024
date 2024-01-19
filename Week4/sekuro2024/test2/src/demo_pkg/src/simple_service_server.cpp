#include "ros/ros.h"
#include "demo_pkg/AddTwoInts.h"

bool add(demo_pkg::AddTwoInts::Request &req, demo_pkg::AddTwoInts::Response &resp){
    resp.sumvalue = req.value1 + req.value2;

    ROS_INFO("Nilai Value1: %ld",(long int)req.value1);
    ROS_INFO("Nilai Value2: %ld",(long int)req.value2);
    ROS_INFO("Nilai Sum Value: %ld",(long int)resp.sumvalue);

    return true;
}

int main(int argc, char ** argv){
    ros::init(argc,argv,"service_server");

    ros::NodeHandle nh;

    ros::ServiceServer server = nh.advertiseService("add_two_ints",add);
    ROS_INFO("ready to add two ints");
    ros::spin();

    return 0;
}
