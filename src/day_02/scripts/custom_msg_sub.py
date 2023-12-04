#!/usr/bin/env python3

'''

Custom message subscriber 

'''

import rospy
from day_02.msg import motor_parameter

def custom_callback(msg):
    rospy.loginfo(f"Received custom message: {msg}")

def custom_subscriber():
    rospy.init_node('custom_subscriber', anonymous=True)

    rospy.Subscriber('custom_topic', motor_parameter, custom_callback)

    rospy.spin()

if __name__ == '__main__':
    try:
        custom_subscriber()
    except rospy.ROSInterruptException:
        pass

