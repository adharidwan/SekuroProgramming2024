import rospy
from service_day4_pkg.srv import countmagnitude,countmagnitudeResponse
import math

def count(req):
    res = math.sqrt((req.komponenX * req.komponenX) + (req.komponenY * req.komponenY) + (req.komponenZ * req.komponenZ))

    response = countmagnitudeResponse()
    response.magnitude = res

    return response


def count_magnitude_server():
    rospy.init_node("server")

    s = rospy.Service('count_magnitude',countmagnitude,count)

    rospy.spin()

if __name__ == "__main__":
    count_magnitude_server()