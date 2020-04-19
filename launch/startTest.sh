#!/usr/bin/zsh
if [[ ! -v ROBOCARS_PATH ]]; then
	echo "env var ROBOCARS_PATH is missing !"
	exit -1
fi
if [[ ! -v ROBOCARS_COMPANION_TTY ]]; then
	echo "env var ROBOCARS_COMPANION_TTY is missing !"
	exit -1
fi
if [[ ! -v ROBOCARS_FRONT_VIDEO ]]; then
	echo "env var ROBOCARS_FRONT_VIDEO is missing !"
	exit -1
fi

echo "Main PATH : $ROBOCARS_PATH"
echo "Companion on tty :  $ROBOCARS_COMPANION_TTY"
echo "Front video from dev : $ROBOCARS_FRONT_VIDEO"


stdbuf -o L roslaunch test.launch
