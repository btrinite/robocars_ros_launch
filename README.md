# Compile usb_cam with optimization
    host : catkin_make --pkg usb_cam -DCMAKE_BUILD_TYPE=Release
    target : catkin_make install -DCATKIN_WHITELIST_PACKAGES="usb_cam" -DCMAKE_BUILD_TYPE=Release

# In isolated mode, you must compile with : (recommended, but no way to compile specific package)
./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release -j1

(-j1 for limited resource target)

# recommended way with caktin tools

catkin build <target_package>

In the package :
catkin build --this

# Not recomended way :
- to compile a specific package :

``sh
catkin_make --only-pkg-with-deps <package name>
`` 

- to revert bqck to global make :

``sh
catkin_make -DCATKIN_WHITELIST_PACKAGES=""
``