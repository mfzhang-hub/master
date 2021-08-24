#!/bin/bash

roslaunch lxind_middle1 middle_node.launch

while true
do
    roslaunch lxind_middle1 middle_node_twice.launch
    sleep 1
done