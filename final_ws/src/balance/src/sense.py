#!/usr/bin/env python
import rospy
import serial

from balance.msg import ForceInformation

port = serial.Serial('/dev/ttyACM2', 9600, timeout=1)
print("-----------------------------------------------------")
print("Communications online on " + port.name)

port.flushInput()

rospy.init_node('sense')
pub = rospy.Publisher('forces', ForceInformation, queue_size = 1)

while True:
    data = port.readline()

    packet = str(data).split(",")
    packet = [int(point) for point in packet]
    pub.publish(ForceInformation(packet[0], packet[1], packet[2], packet[3]))
