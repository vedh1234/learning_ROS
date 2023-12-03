#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from rospy.rostime import Time
import matplotlib.pyplot as plt
from datetime import datetime
from matplotlib.animation import FuncAnimation

timestamps = []
cpu_percentages = []
memory_percentages = []

def metrics_callback(data):
    rospy.loginfo(f"Received metrics: {data.data}")

    metrics = data.data.split(', ')
    cpu_percentage = float(metrics[0].split(': ')[1].strip('%'))
    memory_percentage = float(metrics[1].split(': ')[1].strip('%'))

    timestamps.append(datetime.now())
    cpu_percentages.append(cpu_percentage)
    memory_percentages.append(memory_percentage)

def update_plot(frame):
    plt.clf()

    plt.subplot(2, 1, 1)
    plt.plot(timestamps, cpu_percentages, label='CPU Usage')
    plt.title('CPU Usage Over Time')
    plt.xlabel('Timestamp')
    plt.ylabel('CPU Percentage (%)')
    plt.legend()

    plt.subplot(2, 1, 2)
    plt.plot(timestamps, memory_percentages, label='Memory Usage')
    plt.title('Memory Usage Over Time')
    plt.xlabel('Timestamp')
    plt.ylabel('Memory Percentage (%)')
    plt.legend()

    plt.tight_layout()

def sub():
    rospy.init_node('cpu_sub', anonymous=True)
    rospy.Subscriber('sys_metric', String, metrics_callback)

    ani = FuncAnimation(plt.gcf(), update_plot, interval=1000)  

    plt.show()

    rospy.spin()

if __name__ == '__main__':
    sub()

