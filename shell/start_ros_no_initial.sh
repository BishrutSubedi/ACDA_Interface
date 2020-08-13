#!/bin/bash
var1=$1
echo $var1
if [ $var1 -eq 1 ]
then
	(sshpass -p nvidia ssh root@192.168.1.131 "/home/nvidia/catkin_ws/devel/sshnodes/start_ros.sh") &
	(sshpass -p nvidia ssh root@192.168.1.130 "/home/nvidia/catkin_ws/devel/sshnodes/start_ros.sh") &
	(sleep 15
	 /home/dnc2/Documents/catkin_ws/devel/sshnode/save_rosbag.sh)
else
	(sshpass -p nvidia ssh root@192.168.1.131 "/home/nvidia/catkin_ws/devel/sshnodes/start_ros.sh") &
	(sleep 15
	 /home/dnc2/Documents/catkin_ws/devel/sshnode/save_rosbag.sh)

fi
