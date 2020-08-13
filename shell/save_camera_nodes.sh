var1=$1
var2=$2
_now=$(date +"%Y_%m_%d_%I_%M_%p")
echo $var1 $var2

(if [ $var1 -eq 1 ]
then
	sleep 5
	rosrun image_view video_recorder image:="/infrared_img" _filename:="/home/dnc2/Desktop/save_data/inf_output_video_$_now.avi" __name:=record_infra_camera
fi
) &

(if [ $var2 -eq 1 ]
then
	sleep 5
	rosbag record -O /home/dnc2/Desktop/save_data/opt_output_video_$_now  /csi_cam_0/image_raw/compressed __name:=record_opt_camera
fi)
