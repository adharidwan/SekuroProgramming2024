#!/usr/bin/env python3

import rospy
from topic_day4_pkg.msg import person

def callback(msg):
    rospy.loginfo("Nama : %s" %msg.nama)
    rospy.loginfo("Usia : %ld" %msg.usia)
    rospy.loginfo("Tinggi : %lf" %msg.tinggi)
    if msg.kehadiran:
        hadir = "Hadir"
    else:
        hadir = "Tidak Hadir"

    rospy.loginfo("Kehadiran : %s" %hadir)

def listener():
    rospy.init_node("subscriber",anonymous=True)

    rospy.Subscriber("topik_day4_python",person,callback)

    rospy.spin()

if __name__ == "__main__":
    listener()