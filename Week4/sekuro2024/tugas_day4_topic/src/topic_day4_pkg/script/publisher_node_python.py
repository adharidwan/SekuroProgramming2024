#!/usr/bin/env python3

import rospy
from topic_day4_pkg.msg import person

def talker():
    message_pub = rospy.Publisher("topik_day4_python",person,queue_size=10)

    rospy.init_node('publisher',anonymous=True)

    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        data_person = person()

        data_person.nama = "Asep Nugroho"
        data_person.usia = 19
        data_person.tinggi = 193.3
        data_person.kehadiran = True

        message_pub.publish(data_person)
        
        rate.sleep()


if __name__ == "__main__":
    try:
        talker();
    except rospy.ROSInterruptException:
        pass