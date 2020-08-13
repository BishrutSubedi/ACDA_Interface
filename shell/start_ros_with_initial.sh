#!/bin/bash
var1=$1
var2=$2
var3=$((var2+180))
if [ $var3 -gt 360 ]
then 
	var3=$((var3-360))
	echo $var3
fi
echo $var1 $var2
if [ $var1 -eq 1 ]
then
	(sshpass -p nvidia ssh root@192.168.1.131 "/home/nvidia/catkin_ws/devel/sshnodes/start_ros.sh $var2") &
	(sshpass -p nvidia ssh root@192.168.1.130 "/home/nvidia/catkin_ws/devel/sshnodes/start_ros.sh $var3") &
	(sleep 15
	 /home/dnc2/Documents/catkin_ws/devel/sshnode/save_rosbag.sh)
else
		
	(sshpass -p nvidia ssh root@192.168.1.131 "/home/nvidia/catkin_ws/devel/sshnodes/start_ros.sh $var2 ")&
	(sleep 15
	 /home/dnc2/Documents/catkin_ws/devel/sshnode/save_rosbag.sh)
fi
