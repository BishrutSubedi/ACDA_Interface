#!/bin/bash

(rosnode kill /record_infra_camera) &
(sleep 1
rosnode kill /record_opt_camera ) &
(sleep 2
rosnode kill /csi_cam ) &
(sleep 3
rosnode kill /infrared_video)

 
