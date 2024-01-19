#include "ros/ros.h"
#include "demo_pkg/AddTwoInts.h"

int main(int argc, char ** argv){
    ros::init(argc,argv,"simple_client_server");
    ros::NodeHandle nh;

    ros::ServiceClient client = nh.serviceClient<demo_pkg::AddTwoInts>("add_two_ints");

    demo_pkg::AddTwoInts srv;
    srv.request.value1 = 2;
    srv.request.value2 = 4;

    if(client.call(srv)){
        ROS_INFO("The sum is : %ld", srv.response.sumvalue);
    }else{
        ROS_INFO("Failed");
        return 1;
    }

    return 0;
}