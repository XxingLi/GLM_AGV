# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "serial_pkg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iserial_pkg:/home/glm/catkin_ws/src/serial_pkg/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators

add_custom_target(serial_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/glm/catkin_ws/src/serial_pkg/msg/Serial_rw.msg" NAME_WE)
add_custom_target(_serial_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "serial_pkg" "/home/glm/catkin_ws/src/serial_pkg/msg/Serial_rw.msg" ""
)

#
#  langs = 
#


