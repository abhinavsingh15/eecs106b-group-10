#!/usr/bin/env python
import rospy
import baxter_interface
import time
import numpy as np
from baxter_interface import CHECK_VERSION

from balance.msg import PositionInformation

rospy.init_node('control')

input0_log = []
input1_log = []

current_x = 0
current_y = 0
current_time = 0
initialize = True

A = np.array([[0., 1., 0., 0.],
              [0., 0., 0., 0.],
              [0., 0., .0, 1.],
              [0., 0., 0., 0.]])
B = np.array([[     0., 0.],
              [7.0071, 0.],
              [     0., 0.],
              [     0., -7.0071]])

a1 = 1.0
a2 = 1.0
a3 = 1.0
a4 = 1.0
Q = np.array([[1., 0., 0., 1.],
              [0., 1., 1., 0.],
              [0., 1., 1., 0.],
              [1., 0., 0., 1.]])
R = np.diag([1., 1.])

def discrete_lqr(A, B, Q, R, horizons):
    #Solve ricatti equation
    P = Q
    for i in range(horizons):
        Pn = A.T.dot(P).dot(A) - A.T.dot(P).dot(B).dot(np.linalg.inv(R + B.T.dot(P).dot(B))).dot(B.T).dot(P).dot(A) + Q
        if (abs(Pn - P).max() < 0.01):
            break
        P =  Pn
    K = np.linalg.inv(B.T.dot(P).dot(B) + R).dot(B.T.dot(P).dot(A))
    return K

K = discrete_lqr(A, B, Q, R, 50)


# Set joint commands
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

def callback(message):
    global current_x
    global current_y
    global current_time
    global initialize
    global input0_log
    global input1_log
    x = message.x
    y = message.y
    t = message.time
    if initialize:
        current_x = x
        current_y = y
        current_time = t
        initialize = False
        return
    delta_t = t - current_time
    x_dot = (x - current_x)/delta_t
    y_dot = (y - current_y)/delta_t
    
    x_state = np.array([x, x_dot, y, y_dot])
    x_state = x_state / 100.0

    u = -K.dot(x_state.T)
    u[1] = u[1]*25
    print(u)
    input0_log.append(u[0])
    input1_log.append(u[1])

    if abs(u[1]) > 0.005:
        cmd = (set_j, [left, lj[6], u[1]], "Left-Right Angle")
        cmd[0](*cmd[1])
    # if abs(u[0]) > 0.005:
    #     cmd = (set_j, [left, lj[5], u[0]], "Up-Down Angle")
    #     cmd[0](*cmd[1])

    current_x = x
    current_y = y
    current_time = t

def listener():
    rospy.Subscriber('positions', PositionInformation, callback)
    # exits with ctrl-c
    rospy.spin()
    from matplotlib import pyplot as plt
    fig, axs = plt.subplots(2)
    fig.suptitle('LQR Control Inputs')
    axs[0].set_title('Theta_y')
    axs[0].set_ylabel('Theta_y')
    axs[0].set_xlabel('Time')
    axs[0].plot(input0_log)
    axs[1].set_title('Theta_x')
    axs[1].set_ylabel('Theta_x')
    axs[1].set_xlabel('Time')
    axs[1].plot(input1_log)
    plt.show()
    print('easter egg message')
    

# pub = rospy.Publisher('movement', MovementInformation, queue_size = 1)
if __name__ == '__main__':
    listener()