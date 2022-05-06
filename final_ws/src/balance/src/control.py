#!/usr/bin/env python
import rospy
import baxter_interface
from baxter_interface import CHECK_VERSION

from balance.msg import ForceInformation

time = 0
angle0 = 0
baseline_left = 0
baseline_right = 0
baseline_front = 0
baseline_back = 0
time_limit = 100

rospy.init_node('control')

# movement
left = baxter_interface.Limb('left')
right = baxter_interface.Limb('right')
grip_left = baxter_interface.Gripper('left', CHECK_VERSION)
grip_right = baxter_interface.Gripper('right', CHECK_VERSION)
lj = left.joint_names()
rj = right.joint_names()

def set_j(limb, joint_name, delta):
    current_position = limb.joint_angle(joint_name)
    joint_command = {joint_name: current_position + delta}
    print(joint_command)
    limb.set_joint_positions(joint_command)
    
left_cmd = (set_j, [left, lj[6], -0.1], "left_w2 decrease")
right_cmd = (set_j, [left, lj[6], 0.1], "left_w2 increase")

def callback(message):
    global time
    global baseline_left
    global baseline_right
    global baseline_front
    global baseline_back
    global angle0
    left = message.left
    right = message.right
    front = message.front
    back = message.back


    # calibration phase
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
        time += 1
        return

    offset_left = baseline_left - left
    offset_right = baseline_right - right
    offset_front = baseline_front - front
    offset_back = baseline_back - back

    offset = [offset_left, offset_right, offset_front, offset_back]
    print(offset)

    # if (offset_left - offset_right) > 50 and angle0 <= 0.3:
    #     cmd = left_cmd
    #     angle0 += 0.1
    #     cmd[0](*cmd[1])
    #     print('left_cmd')
    # elif (offset_right - offset_left) > 50 and angle0 >= -0.3:
    #     cmd = right_cmd
    #     angle0 -= 0.1
    #     cmd[0](*cmd[1])
    #     print('right_cmd')

def listener():
    print('Running Listener')
    rospy.Subscriber('forces', ForceInformation, callback)
    # exits with ctrl-c
    rospy.spin()
    

# pub = rospy.Publisher('movement', MovementInformation, queue_size = 1)
if __name__ == '__main__':
    listener()