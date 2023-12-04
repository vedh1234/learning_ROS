#!/usr/bin/env python3

'''

Controller to move turtlesim in diffrent shapes and goals
1] Circle
2] Rotate
3] Forward
4] go_to_goal
 
'''
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import math

x = 0
y = 0
yaw = 0

def takepose(pose_message):
    global x, y, yaw
    x = pose_message.x
    y = pose_message.y
    yaw = pose_message.theta
    
def go_to_goal(x_goal, y_goal):
    global x, y, yaw
    global pub,rate,msg
    

    while True:
        K_linear = 0.2
        distance = abs(math.sqrt((((x_goal - x) ** 2) + ((y_goal - y) ** 2))))

        linear_speed = distance * K_linear

        K_angular = 1.0
        desired_angle_goal = math.atan2(y_goal - y, x_goal-x)
        angular_speed = (desired_angle_goal - yaw) * K_angular

        msg.linear.x = linear_speed
        msg.angular.z = angular_speed

        pub.publish(msg)

        if (distance <= 0.01):
            break
           
        msg.linear.x = 0.0
        msg.angular.z = 0.0
        rospy.sleep(1.0)
        

def forward(distance):
    global pub,rate,msg
    msg.linear.x = 1
    msg.angular.z = 0
    duration = abs(distance/1)
    t0 = rospy.Time.now()
    
    while (rospy.Time.now() - t0).to_sec()<duration:
    	pub.publish(msg)
    	rate.sleep()
    	
    msg.angular.z = 0.0
    pub.publish(msg)
    rospy.sleep(1.0)
    
    

def rotate(angle):
    global pub,rate,msg
    vel = 1 
    msg.angular.z = vel if angle > 0 else -vel
    msg.linear.x = 0
    t0 = rospy.Time.now()
    
    angle_rad = math.radians(angle)
    duration = abs(angle_rad/1)
    
    while (rospy.Time.now() - t0).to_sec()<duration:
    	pub.publish(msg)
    	rate.sleep()
    	
    msg.angular.z = 0.0
    pub.publish(msg)
    rospy.sleep(1.0)
    	
    	

def circle():
    global pub,rate,msg
    msg.linear.x = 1.0
    msg.angular.z = 1.0
    
    now = rospy.Time.now()
    
    while rospy.Time.now() < now + rospy.Duration.from_sec(6) :
    	pub.publish(msg)
    	rate.sleep()
    

def control():
    rospy.init_node('controller',anonymous = True)
    global pub,rate,msg
    pub = rospy.Publisher('turtle1/cmd_vel', Twist, queue_size = 10)
    rate = rospy.Rate(10)
    msg = Twist()
    pose_topic = '/turtle1/pose'
    pose_sub = rospy.Subscriber(pose_topic, Pose, takepose)
    rospy.sleep(2)
    
    #circle()
    go_to_goal(2.0, 2.0)
    
    

if __name__ == '__main__':
    try:
    	control()
    except  rospy.ROSInterruptException:
    	pass
