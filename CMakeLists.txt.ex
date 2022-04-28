cmake_minimum_required(VERSION 3.15)
project(um7)


set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}")

find_package(ROS REQUIRED COMPONENTS roscpp serial sensor_msgs)
# find_package(Eigen REQUIRED)

add_executable(um7_driver src/main.cpp src/registers.cpp src/comms.cpp)
target_link_libraries(um7_driver 
ros::roscpp
ros::serial
ros::sensor_msgs
)
include_directories(include
  include/
)