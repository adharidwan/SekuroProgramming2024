import rospy
from demo_pkg.srv import AddTwoInts,AddTwoIntsResponse

def add_two_ints_ints_clients(x,y):
    rospy.init_node("client")

    rospy.wait_for_service("add_two_ints_ints_py",)
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        try:
            add_two_ints = rospy.ServiceProxy('add_two_ints_ints_py',AddTwoInts)
            response = add_two_ints(x,y)

            rospy.loginfo("Sum : %ld " % response.sumvalue)
            rate.sleep()

        except rospy.ServiceException as e:
            print("service failed %s ", e)

if __name__ == "__main__":
    add_two_ints_ints_clients(22,10)