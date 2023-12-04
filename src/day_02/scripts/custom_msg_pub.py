#!/usr/bin/env python3

'''
Custom message publisher
'''

import rospy
from day_02.msg import motor_parameter

def custom_publisher():

    rospy.init_node('custom_msg_pub', anonymous=True)
    pub = rospy.Publisher('custom_topic', motor_parameter, queue_size=10)

    custom_msg = motor_parameter()

    custom_msg.id = 1
    custom_msg.description = "description"
    custom_msg.speed = 1.5
    custom_msg.enc_count = 12345
    custom_msg.accelaration = 0.8

    rate = rospy.Rate(1)  
    while not rospy.is_shutdown():
        pub.publish(custom_msg)
        rospy.loginfo(custom_msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        custom_publisher()
    except rospy.ROSInterruptException:
        pass

