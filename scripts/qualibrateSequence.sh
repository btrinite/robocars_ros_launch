#!/bin/sh
rostopic pub /robocars_actuator_ctrl_mode robocars_msgs/robocars_actuator_ctrl_mode -1 -f enter_qualibrate_mode.yaml
echo "Now in qualibration mode"
echo "Move remote control al directions now for 10 seconds !"
sleep 10
rostopic pub /robocars_actuator_ctrl_mode robocars_msgs/robocars_actuator_ctrl_mode -1 -f leave_qualibrate_mode.yaml
echo "End of qualibration mode"
echo "Qualibration result for Seeting :"
rosparam get /steering_ctrl/command_input_min
rosparam get /steering_ctrl/command_input_max
echo "Qualibration result for Throttling :"
rosparam get /throttling_ctrl/command_input_min
rosparam get /throttling_ctrl/command_input_max
echo "Qualibration result for Braking :"
rosparam get /braking_ctrl/command_input_min
rosparam get /braking_ctrl/command_input_max



