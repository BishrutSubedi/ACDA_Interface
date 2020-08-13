#!/bin/bash
var1=$1
echo $var1 
if [ $var1 -eq 1  ]  
then
	(sshpass -p nvidia ssh root@192.168.1.131 "/home/nvidia/catkin_ws/devel/sshnodes/stop_ros.sh") &
	(sshpass -p nvidia ssh root@192.168.1.130 "/home/nvidia/catkin_ws/devel/sshnodes/stop_ros.sh") &
	(rosnode kill /record_local_bag)
else
	(sshpass -p nvidia ssh root@192.168.1.131 "/home/nvidia/catkin_ws/devel/sshnodes/stop_ros.sh") &
	(rosnode kill /record_local_bag)
fi
