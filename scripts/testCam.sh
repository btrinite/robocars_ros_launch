lsusb -s 005:002 -v | egrep "Width|Height"
v4l2-ctl --device=1 --list-formats-ext


