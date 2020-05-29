# collection of scripts and ROS launch files to operate the robocar

# Main launch file
Main launch file is launch/all.launch,
script /launch/startAll.sh can be used to start manually th full stack as foillow :
```
cd catkin_src/src/robocars_ros_launch
./startAll.sh
```

The script will check that followin env variable exist :
- ROBOCARS_PATH : location where :
    - config file can be found. Config file is used to configure some attributes for each ROS nodes, file can be empty, but must exist.
    - models directoty can be found. This is where the autopilot expect to find requested model
    - camera calibration file (optionnal), expect fo find file named front_camera.yaml if any  
- ROBOCARS_COMPANION_TTY : uart device where ESP32 is connectedm could be something like ttyS0 or ttyS1 or ttyUSB0, depending on how you connected the ESP32
- ROBOCARS_COMPANION_TTY_SPEED : uart speed, depends on how ESP32 is configured, and capability of the core host.
- ROBOCARS_FRONT_VIDEO : Video device for front camera (usualy /dev/video0), but depends on your configuration.
- ROBOCARS_CAPTURE_PATH : path where images and associated driving data are recorded. It could be on mass storage or on a ramdisk, depending on performance constraints

# additional scritps
In scripts directory, you can find :
- backupConfig.sh : perform backup of current ROS nodes parameters in a yaml file
- loadModel.sh : reauest autopilot to load a given tflite nmodel
- reloadConfig.sh : reload whole config file
- startRobocarsSvc.sh : enable Robocars systemd service
- stopRobocarsScv.sh : disable Robocars systemd service
- qualibrateSequence.sh : start qualibration sequence

# Note on how to compile ROS packages with optimization
```
catkin_make -DCATKIN_WHITELIST_PACKAGES="" -DCMAKE_BUILD_TYPE=Release
```

In isolated mode, you must compile with : (recommended, but no way to compile specific package)
```
./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release
```

(Add -j1 to limited CPU resources used simultaneously)
