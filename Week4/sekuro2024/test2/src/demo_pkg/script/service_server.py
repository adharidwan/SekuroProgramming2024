import rospy
from demo_pkg.srv import AddTwoInts,AddTwoIntsResponse

def penjumlah(req):
    rospy.loginfo("Hasil : [%ld + %ld = %ld]" % (req.value1,req.value2,(req.value2 + req.value1)))

    return AddTwoIntsResponse(req.value1 + req.value2)


def add_two_ints_server():
    rospy.init_node("server")

    s = rospy.Service('add_two_ints_ints_py',AddTwoInts,penjumlah)
    rospy.loginfo("siap menambah")
    rospy.spin()

if __name__ == "__main__":
    add_two_ints_server()