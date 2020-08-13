#!/bin/sh

var1=$1
var2=$2
_now=$(date +"%Y_%m_%d_%I_%M_%p")
echo $var1 $var2

(
if [ $var1 -eq 11 ]
then
	(sshpass -p nvidia ssh root@192.168.1.130 "/home/nvidia/catkin_ws/devel/sshnodes/run_infrared_camera.sh 1") &
(sleep 15
rosrun image_view video_recorder image:="/infrared_img" _filename:="/home/dnc2/Desktop/save_data/inf_output_video_$_now.avi" __name:=record_infra_camera	
)
elif [ $var1 -eq 10 ]
then
	sshpass -p nvidia ssh root@192.168.1.130 "sudo /home/nvidia/catkin_ws/devel/sshnodes/run_infrared_camera.sh 1"

fi

)&
(

sleep 10
if [ $var2 -eq 11 ]
then
	(sshpass -p nvidia ssh root@192.168.1.130 "/home/nvidia/catkin_ws/devel/sshnodes/run_optical_camera.sh 1") &
(sleep 15
rosbag record -O /home/dnc2/Desktop/save_data/opt_output_video_$_now  /csi_cam/image_raw/compressed __name:=record_opt_camera
)
elif [ $var2 -eq 10 ]
then
	(sshpass -p nvidia ssh root@192.168.1.130 "/home/nvidia/catkin_ws/devel/sshnodes/run_optical_camera.sh 1 ")
fi
)





#(sshpass -p 1010 ssh lswpi@192.168.1.133 "/home/lswpi/web_video_script.sh") &
#(sleep 20
#if [ $var1 -eq 1 ]
#then
#	rosrun image_view video_recorder image:="/chatterimg" _filename:="/home/dnc2/Desktop/save_data/output_video_$_now.avi"	
#fi
#)
 
	
