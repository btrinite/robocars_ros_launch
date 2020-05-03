#!/bin/sh
echo "Loading model $1"
rosparam set /robocars_autopilot/model_filename $(basename $1)
wait 2000
rosservice call /robocars_autopilot/reloadModel

