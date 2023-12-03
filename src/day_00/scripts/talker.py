#!/usr/bin/env python3

'''

1] Det the name for topic to publish
2] choose the message type
3] Det frequency
4] Create a publisher object
5] Publish the message 
 
'''

import rospy
from std_msgs.msg import String

def talker():
    
    rospy.init_node('talker', anonymous = True)
    pub = rospy.Publisher('talker', String , queue_size = 10)
    rate = rospy.Rate(1)
    
    i=0
    
    while not rospy.is_shutdown():
    	hello_str = "Hello world %s" % i
    	rospy.loginfo(hello_str)
    	pub.publish(hello_str)
    	rate.sleep()
    	i +=1
    	

if __name__ == '__main__':
    try:
    	talker();
    except rospy.ROSInterruptException:
    	pass
