import rospy
from demo_pkg.msg import pesan

def callback(note):
    rospy.loginfo("Pesan 1: %ld" % note.pesan1)
    rospy.loginfo("Pesan 2: %lf" % note.pesan2)
    rospy.loginfo("Pesan 3: %s" % note.pesan3)

def listener():
    rospy.init_node("subscriber",anonymous=True)

    rospy.Subscriber("topik_utama_python",pesan,callback)

    rospy.spin()


if __name__ == "__main__":
    listener()