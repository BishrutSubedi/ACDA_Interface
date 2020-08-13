#!/bin/bash
var1=$1
echo $var1
if [ "$var1" -eq 1 ]
then
	echo calibrate two IMU
	(sshpass -p nvidia ssh root@192.168.1.131 "/home/nvidia/catkin_ws/devel/sshnodes/start_ros_imucal.sh" ) &
	(sshpass -p nvidia ssh root@192.168.1.130 "/home/nvidia/catkin_ws/devel/sshnodes/start_ros_imucal.sh" )
else
	echo calibrate local_IMU
	sshpass -p nvidia ssh root@192.168.1.131 "/home/nvidia/catkin_ws/devel/sshnodes/start_ros_imucal.sh"
fi

