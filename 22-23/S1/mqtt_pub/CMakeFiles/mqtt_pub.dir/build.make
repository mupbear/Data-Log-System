# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/Desktop/Data-Log-System-S3/mqtt_pub

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/Data-Log-System-S3/mqtt_pub

# Include any dependencies generated for this target.
include CMakeFiles/mqtt_pub.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mqtt_pub.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mqtt_pub.dir/flags.make

CMakeFiles/mqtt_pub.dir/main.cpp.o: CMakeFiles/mqtt_pub.dir/flags.make
CMakeFiles/mqtt_pub.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Data-Log-System-S3/mqtt_pub/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mqtt_pub.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mqtt_pub.dir/main.cpp.o -c /home/pi/Desktop/Data-Log-System-S3/mqtt_pub/main.cpp

CMakeFiles/mqtt_pub.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mqtt_pub.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Data-Log-System-S3/mqtt_pub/main.cpp > CMakeFiles/mqtt_pub.dir/main.cpp.i

CMakeFiles/mqtt_pub.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mqtt_pub.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Data-Log-System-S3/mqtt_pub/main.cpp -o CMakeFiles/mqtt_pub.dir/main.cpp.s

CMakeFiles/mqtt_pub.dir/MCP3008.cpp.o: CMakeFiles/mqtt_pub.dir/flags.make
CMakeFiles/mqtt_pub.dir/MCP3008.cpp.o: MCP3008.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Data-Log-System-S3/mqtt_pub/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mqtt_pub.dir/MCP3008.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mqtt_pub.dir/MCP3008.cpp.o -c /home/pi/Desktop/Data-Log-System-S3/mqtt_pub/MCP3008.cpp

CMakeFiles/mqtt_pub.dir/MCP3008.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mqtt_pub.dir/MCP3008.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Data-Log-System-S3/mqtt_pub/MCP3008.cpp > CMakeFiles/mqtt_pub.dir/MCP3008.cpp.i

CMakeFiles/mqtt_pub.dir/MCP3008.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mqtt_pub.dir/MCP3008.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Data-Log-System-S3/mqtt_pub/MCP3008.cpp -o CMakeFiles/mqtt_pub.dir/MCP3008.cpp.s

CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.o: CMakeFiles/mqtt_pub.dir/flags.make
CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.o: temp_sensor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Data-Log-System-S3/mqtt_pub/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.o -c /home/pi/Desktop/Data-Log-System-S3/mqtt_pub/temp_sensor.cpp

CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Data-Log-System-S3/mqtt_pub/temp_sensor.cpp > CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.i

CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Data-Log-System-S3/mqtt_pub/temp_sensor.cpp -o CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.s

# Object files for target mqtt_pub
mqtt_pub_OBJECTS = \
"CMakeFiles/mqtt_pub.dir/main.cpp.o" \
"CMakeFiles/mqtt_pub.dir/MCP3008.cpp.o" \
"CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.o"

# External object files for target mqtt_pub
mqtt_pub_EXTERNAL_OBJECTS =

mqtt_pub: CMakeFiles/mqtt_pub.dir/main.cpp.o
mqtt_pub: CMakeFiles/mqtt_pub.dir/MCP3008.cpp.o
mqtt_pub: CMakeFiles/mqtt_pub.dir/temp_sensor.cpp.o
mqtt_pub: CMakeFiles/mqtt_pub.dir/build.make
mqtt_pub: libmqttc.a
mqtt_pub: CMakeFiles/mqtt_pub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/Data-Log-System-S3/mqtt_pub/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable mqtt_pub"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mqtt_pub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mqtt_pub.dir/build: mqtt_pub

.PHONY : CMakeFiles/mqtt_pub.dir/build

CMakeFiles/mqtt_pub.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mqtt_pub.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mqtt_pub.dir/clean

CMakeFiles/mqtt_pub.dir/depend:
	cd /home/pi/Desktop/Data-Log-System-S3/mqtt_pub && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/Data-Log-System-S3/mqtt_pub /home/pi/Desktop/Data-Log-System-S3/mqtt_pub /home/pi/Desktop/Data-Log-System-S3/mqtt_pub /home/pi/Desktop/Data-Log-System-S3/mqtt_pub /home/pi/Desktop/Data-Log-System-S3/mqtt_pub/CMakeFiles/mqtt_pub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mqtt_pub.dir/depend
