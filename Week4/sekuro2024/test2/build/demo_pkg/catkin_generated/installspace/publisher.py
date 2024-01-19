import rospy
from demo_pkg.msg import pesan

def talker():
    message_pub = rospy.Publisher("topik_utama_python", pesan, queue_size=10)

    rospy.init_node('publisher',anonymous=True)

    rate = rospy.Rate(1)

    while not rospy.is_shutdown():

        dataVariabel = pesan()

        dataVariabel.pesan1 = 64
        dataVariabel.pesan2 = 18.9
        dataVariabel.pesan3 = "ie pesan na dikirim"

        rospy.loginfo("\n pesan pertama: %ld" % dataVariabel.pesan1)
        rospy.loginfo("pesan kedua: %lf" % dataVariabel.pesan2)
        rospy.loginfo("pesan ketiga: %s" %dataVariabel.pesan3)

        message_pub.publish(dataVariabel)

        rate.sleep()

if __name__ == "__main__":
    try:
        talker()
    except rospy.ROSInterruptException:
        pass