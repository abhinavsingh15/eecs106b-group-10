#!/usr/bin/env python
import rospy
import serial
from matplotlib import pyplot as plt
import numpy as np

from balance.msg import ForceInformation

port = serial.Serial('/dev/ttyACM0', 9600, timeout=1)
print("-----------------------------------------------------")
print("Communications online on " + port.name)

port.flushInput()

rospy.init_node('sense')
rate = rospy.Rate(9600)
pub = rospy.Publisher('forces', ForceInformation, queue_size = 1)

Transform = np.array([[-3.7690, 0.7480, -0.0709, -0.3028],
                      [ 2.3338,  3.1073, -28.3759, 7.0619],
                      [-0.9461, -0.7077, -0.0299, -0.1277]])

# Create GUI event loop       
plt.ion()
figure = plt.figure()
ax = plt.axes()
plt.xlim(-10, 10)
plt.ylim(-10, 10)

time = 0
baseline_left = 0
baseline_right = 0
baseline_front = 0
baseline_back = 0
time_limit = 100
x_pos_gain = -0.5
y_pos_gain = 4.5

x_moving = [0, 0, 0]
y_moving = [0, 0, 0]

while not rospy.is_shutdown():
    data = port.readline()
    packet = str(data).split(",")
    left, right, front, back = [int(point) for point in packet]
    if time < time_limit:
        if time == 0:
            print("Calibrating...")
        baseline_left += left
        baseline_right += right
        baseline_front += front
        baseline_back += back
        if time == time_limit - 1:
            print('Calibration complete.')
            baseline_left /= time_limit
            baseline_right /= time_limit
            baseline_front /= time_limit
            baseline_back /= time_limit
    else:
        offset_left = baseline_left - left
        offset_right = baseline_right - right
        offset_front = baseline_front - front
        offset_back = baseline_back - back
        offset = np.array([offset_left, offset_right, offset_front, offset_back])
        voltage = offset * (3.3/1023)
        position = np.dot(Transform, voltage.T)

        if (position[1] < 0):
            #Right
            x_pos_gain = -0.19
            y_pos_gain = 1
        else:
            #Left
            x_pos_gain = -1.5
            y_pos_gain = 0.7

        x_moving[time % 3] = x_pos_gain*position[1]
        y_moving[time % 3] = y_pos_gain*position[0]

        x_filtered = sum(x_moving)/3.0
        y_filtered = sum(y_moving)/3.0

        if (y_filtered < 0):
            y_filtered = y_filtered * 8
        elif (y_filtered > 0 and abs(x_filtered) < 3):
            y_filtered = y_filtered * 7.25
        
        print('Filtered: ', x_filtered, y_filtered)

        print(x_pos_gain*position[1], y_pos_gain*position[0])

        #plt.plot(x_pos_gain*position[1], y_pos_gain*position[0], 'o')
        plt.plot(x_filtered, y_filtered, 'o')
        #Draw updated values
        figure.canvas.draw()
        ax.clear()
        plt.xlim(-10, 10)
        plt.ylim(-10, 10)

        pub.publish(ForceInformation(packet[0], packet[1], packet[2], packet[3]))
        rate.sleep()
    time += 1
