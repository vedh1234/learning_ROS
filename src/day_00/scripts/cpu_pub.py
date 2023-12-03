#!/usr/bin/env python3

# CPU details Publisher

import rospy
from std_msgs.msg import String
import psutil

def pub():
    rospy.init_node('cpu_pub', anonymous = True)
    pub = rospy.Publisher('sys_metric', String, queue_size = 10)
    rate = rospy.Rate(1)
    
    while not rospy.is_shutdown():
    	metric_data = f"CPU: {psutil.cpu_percent()}%, Memory: {psutil.virtual_memory().percent}%"
    	rospy.loginfo(metric_data)
    	pub.publish(metric_data)
    	rate.sleep()



if __name__ == '__main__':
    try:
    	pub();
    except rospy.ROSInterruptexception:
    	pass
     
