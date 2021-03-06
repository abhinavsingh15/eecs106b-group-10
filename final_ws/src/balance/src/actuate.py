#!/usr/bin/env python

import rospy

import baxter_interface

from baxter_interface import CHECK_VERSION


def map_keyboard():
    left = baxter_interface.Limb('left')
    right = baxter_interface.Limb('right')
    grip_left = baxter_interface.Gripper('left', CHECK_VERSION)
    grip_right = baxter_interface.Gripper('right', CHECK_VERSION)
    lj = left.joint_names()
    rj = right.joint_names()

    def set_j(limb, joint_name, delta):
        current_position = limb.joint_angle(joint_name)
        joint_command = {joint_name: current_position + delta}
        limb.set_joint_positions(joint_command)

    bindings = {
    #   key: (function, args, description)
        's': (set_j, [left, lj[5], 0.1], "left_w1 increase"),
        'w': (set_j, [left, lj[5], -0.1], "left_w1 decrease"),
        'a': (set_j, [left, lj[6], 0.1], "left_w2 increase"),
        'd': (set_j, [left, lj[6], -0.1], "left_w2 decrease")
     }
    done = False
    print("Controlling joints. Esc to quit.")
    while not done and not rospy.is_shutdown():
        c = raw_input()
        if c:
            #catch Esc or ctrl-c
            print(c)
            rospy.sleep(0.05)
            if c in ['\x1b', '\x03']:
                done = True
                rospy.signal_shutdown("Example finished.")
            elif c in bindings:
                cmd = bindings[c]
                #expand binding to something like "set_j(right, 's0', 0.1)"
                cmd[0](*cmd[1])


def main():
    rospy.init_node("actuate")
    map_keyboard()


if __name__ == '__main__':
    main()