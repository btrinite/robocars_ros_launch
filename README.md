# Compile usb_cam with optimization
    host : catkin_make --pkg usb_cam -DCMAKE_BUILD_TYPE=Release
    target : catkin_make install -DCATKIN_WHITELIST_PACKAGES="usb_cam" -DCMAKE_BUILD_TYPE=Release