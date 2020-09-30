#!/bin/sh
echo Inject mak $1
rostopic pub -1 /annotation/mark  robocars_msgs/robocars_mark '{mark: $1}'
