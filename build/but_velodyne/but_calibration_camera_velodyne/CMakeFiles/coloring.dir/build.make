# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/glm/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/glm/catkin_ws/build

# Include any dependencies generated for this target.
include but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/depend.make

# Include the progress variables for this target.
include but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/progress.make

# Include the compile flags for this target's objects.
include but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/flags.make

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/flags.make
but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o: /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/coloring-node.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/glm/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o"
	cd /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/coloring.dir/src/coloring-node.o -c /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/coloring-node.cpp

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coloring.dir/src/coloring-node.i"
	cd /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/coloring-node.cpp > CMakeFiles/coloring.dir/src/coloring-node.i

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coloring.dir/src/coloring-node.s"
	cd /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/coloring-node.cpp -o CMakeFiles/coloring.dir/src/coloring-node.s

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o.requires:
.PHONY : but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o.requires

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o.provides: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o.requires
	$(MAKE) -f but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/build.make but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o.provides.build
.PHONY : but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o.provides

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o.provides.build: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/flags.make
but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o: /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/Image.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/glm/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o"
	cd /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/coloring.dir/src/Image.o -c /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/Image.cpp

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coloring.dir/src/Image.i"
	cd /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/Image.cpp > CMakeFiles/coloring.dir/src/Image.i

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coloring.dir/src/Image.s"
	cd /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/Image.cpp -o CMakeFiles/coloring.dir/src/Image.s

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o.requires:
.PHONY : but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o.requires

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o.provides: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o.requires
	$(MAKE) -f but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/build.make but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o.provides.build
.PHONY : but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o.provides

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o.provides.build: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/flags.make
but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o: /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/Velodyne.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/glm/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o"
	cd /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/coloring.dir/src/Velodyne.o -c /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/Velodyne.cpp

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coloring.dir/src/Velodyne.i"
	cd /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/Velodyne.cpp > CMakeFiles/coloring.dir/src/Velodyne.i

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coloring.dir/src/Velodyne.s"
	cd /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne/src/Velodyne.cpp -o CMakeFiles/coloring.dir/src/Velodyne.s

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o.requires:
.PHONY : but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o.requires

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o.provides: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o.requires
	$(MAKE) -f but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/build.make but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o.provides.build
.PHONY : but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o.provides

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o.provides.build: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o

# Object files for target coloring
coloring_OBJECTS = \
"CMakeFiles/coloring.dir/src/coloring-node.o" \
"CMakeFiles/coloring.dir/src/Image.o" \
"CMakeFiles/coloring.dir/src/Velodyne.o"

# External object files for target coloring
coloring_EXTERNAL_OBJECTS =

/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/build.make
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_common.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_octree.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libOpenNI.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkCommon.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkRendering.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkHybrid.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkCharts.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_io.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_kdtree.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_search.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_sample_consensus.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_filters.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_features.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_keypoints.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_segmentation.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_visualization.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_outofcore.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_registration.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_recognition.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_surface.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_people.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_tracking.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_apps.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libOpenNI.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkCommon.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkRendering.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkHybrid.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkCharts.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libcv_bridge.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libimage_transport.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libimage_geometry.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libpcl_ros_filters.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libpcl_ros_io.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libpcl_ros_tf.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_common.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_octree.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_io.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_kdtree.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_search.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_sample_consensus.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_filters.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_features.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_keypoints.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_segmentation.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_visualization.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_outofcore.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_registration.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_recognition.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_surface.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_people.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_tracking.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_apps.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libOpenNI.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkCommon.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkRendering.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkHybrid.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkCharts.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libnodeletlib.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libbondcpp.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libclass_loader.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libPocoFoundation.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libdl.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libroslib.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librosbag.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librosbag_storage.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libroslz4.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/liblz4.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libtopic_tools.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libtf.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libtf2_ros.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libactionlib.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libmessage_filters.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libroscpp.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libtf2.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librosconsole.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/liblog4cxx.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librostime.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libcpp_common.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_common.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_octree.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libOpenNI.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_io.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_kdtree.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_search.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_sample_consensus.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_filters.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_features.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_keypoints.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_segmentation.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_visualization.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_outofcore.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_registration.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_recognition.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_surface.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_people.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_tracking.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libpcl_apps.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libcv_bridge.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libimage_transport.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libimage_geometry.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libpcl_ros_filters.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libpcl_ros_io.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libpcl_ros_tf.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkCommon.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkRendering.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkHybrid.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkCharts.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libnodeletlib.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libbondcpp.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libclass_loader.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libPocoFoundation.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libdl.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libroslib.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librosbag.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librosbag_storage.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libroslz4.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/liblz4.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libtopic_tools.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libtf.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libtf2_ros.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libactionlib.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libmessage_filters.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libroscpp.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libtf2.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librosconsole.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/liblog4cxx.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/librostime.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /opt/ros/indigo/lib/libcpp_common.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkViews.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkInfovis.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkWidgets.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkHybrid.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkParallel.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkVolumeRendering.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkRendering.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkGraphics.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkImaging.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkIO.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkFiltering.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtkCommon.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: /usr/lib/libvtksys.so.5.8.0
/home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring"
	cd /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/coloring.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/build: /home/glm/catkin_ws/devel/lib/but_calibration_camera_velodyne/coloring
.PHONY : but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/build

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/requires: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/coloring-node.o.requires
but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/requires: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Image.o.requires
but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/requires: but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/src/Velodyne.o.requires
.PHONY : but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/requires

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/clean:
	cd /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne && $(CMAKE_COMMAND) -P CMakeFiles/coloring.dir/cmake_clean.cmake
.PHONY : but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/clean

but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/depend:
	cd /home/glm/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/glm/catkin_ws/src /home/glm/catkin_ws/src/but_velodyne/but_calibration_camera_velodyne /home/glm/catkin_ws/build /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne /home/glm/catkin_ws/build/but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : but_velodyne/but_calibration_camera_velodyne/CMakeFiles/coloring.dir/depend

