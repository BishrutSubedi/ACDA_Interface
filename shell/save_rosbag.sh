#! /bin/bash 
_now=$(date +"%Y_%m_%d_%I_%M_%p")
rosbag record -O /home/dnc2/Desktop/save_data/test_$_now  /local_gps /local_com /local_rssi /remote_gps /remote_com /remote_rssi __name:=record_local_bag

