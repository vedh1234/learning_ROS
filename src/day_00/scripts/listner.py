#!/usr/bin/env python3

'''

1] Identify the topic name to listen
2] Identify the type of message
3] Define callback function
4] Start listening for the topic messages

'''

import rospy
from std_msgs.msg import String

def talker_callback(message):
    rospy.loginfo(rospy.get_caller_id()+"I heard %s", message.data)

def listner():
    rospy.init_node('listner', anonymous = True)
    sub = rospy.Subscriber('talker', String, talker_callback)
    rospy.spin()


if __name__ == '__main__':
    try:
    	listner();
    except rospy.ROSInterruptException:
    	pass
