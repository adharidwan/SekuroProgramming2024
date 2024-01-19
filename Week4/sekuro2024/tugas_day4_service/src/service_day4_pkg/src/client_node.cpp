#include "ros/ros.h"
#include "service_day4_pkg/countmagnitude.h"

int main(int argc, char ** argv){
    ros::init(argc,argv,"client_server");
    ros::NodeHandle nh;

    ros::ServiceClient client = nh.serviceClient<service_day4_pkg::countmagnitude>("count_magnitude");

    service_day4_pkg::countmagnitude srv;
    // contoh input dengan client atau bisa juga melalui rosservice /call pada terminal
    srv.request.komponenX = 2;
    srv.request.komponenY = 2;
    srv.request.komponenZ = 2;

    if(client.call(srv)){
        ROS_INFO("Magnitude is : %lf", srv.response.magnitude);
    }else{
        ROS_INFO("Something Wrong");
        return 1;
    }
    return 0;
}