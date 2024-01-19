import rospy
from service_day4_pkg.srv import countmagnitude,countmagnitudeResponse

def count_magnitude_client(x,y,z):
    rospy.init_node("client")

    rospy.wait_for_service('count_magnitude')
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        try:
            cnt_magnitude = rospy.ServiceProxy('count_magnitude',countmagnitude)
            response = cnt_magnitude(x,y,z)

            rospy.loginfo("Magnitude is : %lf" %response.magnitude)
            rate.sleep()

        except rospy.ServiceException as e:
            print("service failed %s " % e)

if __name__ == "__main__":
    count_magnitude_client(7,8,9)