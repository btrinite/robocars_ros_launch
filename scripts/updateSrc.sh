#!/bin/sh
cd ~/catkin_ws/src
echo "Pulling robocars_autopilot"
cd robocars_autopilot
git pull
cd ..
echo "Pulling robocars_brain"
cd robocars_brain
git pull
cd ..
echo "Pulling robocars_braking_ctrl"
cd robocars_braking_ctrl
git pull
cd ..
echo "Pulling robocars_data_capture"
cd robocars_data_capture
git pull
cd ..
echo "Pulling robocars_msg"
cd robocars_msgs
git pull
cd ..
echo "Pulling robocars_steering_ctrl"
cd robocars_steering_ctrl
git pull
cd ..
echo "Pulling robocars_switch_ctrl"
cd robocars_switch_ctrl
git pull
cd ..
echo "Pulling robocars_throttling_ctrl"
cd robocars_throttling_ctrl
git pull
cd ..
echo "Pulling usb_cam"
cd usb_cam
git pull
cd ..
echo "Pulling robocars_esp32cam_bridge"
cd robocars_esp32cam_bridge
git pull
cd ..
cd ~/catkin_ws
catkin_make -DCATKIN_WHITELIST_PACKAGES="" -DCMAKE_BUILD_TYPE=Release
