#include "ros/ros.h"
#include "service_day4_pkg/countmagnitude.h"
#include <cmath>

bool count(service_day4_pkg::countmagnitude::Request &req,service_day4_pkg::countmagnitude::Response &resp){
    resp.magnitude = sqrt((req.komponenX * req.komponenX) + (req.komponenY * req.komponenY) + (req.komponenZ * req.komponenZ));
    return true;
}


int main(int argc, char ** argv){
    ros::init(argc,argv,"count_magnitude");
    ros::NodeHandle nh;

    ros::ServiceServer server = nh.advertiseService("count_magnitude",count);

    ros::spin();

    return 0;
}