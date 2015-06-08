source /opt/ros/indigo/setup.sh
source devel/setup.sh

catkin_make Perception_utest
catkin_make Actuation_utest
catkin_make Navigation_utest
