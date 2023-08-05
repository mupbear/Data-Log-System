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
CMAKE_SOURCE_DIR = /home/pi/Desktop/Data-Log-System-S3/mqtt_sub

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/Data-Log-System-S3/mqtt_sub/cmake-build-raspberry-pi

# Include any dependencies generated for this target.
include CMakeFiles/mqttc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mqttc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mqttc.dir/flags.make

CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.o: CMakeFiles/mqttc.dir/flags.make
CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.o: ../MQTT-C-master/src/mqtt_pal.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Data-Log-System-S3/mqtt_sub/cmake-build-raspberry-pi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.o -c /home/pi/Desktop/Data-Log-System-S3/mqtt_sub/MQTT-C-master/src/mqtt_pal.c

CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/Desktop/Data-Log-System-S3/mqtt_sub/MQTT-C-master/src/mqtt_pal.c > CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.i

CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/Desktop/Data-Log-System-S3/mqtt_sub/MQTT-C-master/src/mqtt_pal.c -o CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.s

CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.o: CMakeFiles/mqttc.dir/flags.make
CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.o: ../MQTT-C-master/src/mqtt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Data-Log-System-S3/mqtt_sub/cmake-build-raspberry-pi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.o -c /home/pi/Desktop/Data-Log-System-S3/mqtt_sub/MQTT-C-master/src/mqtt.c

CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/Desktop/Data-Log-System-S3/mqtt_sub/MQTT-C-master/src/mqtt.c > CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.i

CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/Desktop/Data-Log-System-S3/mqtt_sub/MQTT-C-master/src/mqtt.c -o CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.s

# Object files for target mqttc
mqttc_OBJECTS = \
"CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.o" \
"CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.o"

# External object files for target mqttc
mqttc_EXTERNAL_OBJECTS =

libmqttc.a: CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt_pal.c.o
libmqttc.a: CMakeFiles/mqttc.dir/MQTT-C-master/src/mqtt.c.o
libmqttc.a: CMakeFiles/mqttc.dir/build.make
libmqttc.a: CMakeFiles/mqttc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/Data-Log-System-S3/mqtt_sub/cmake-build-raspberry-pi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libmqttc.a"
	$(CMAKE_COMMAND) -P CMakeFiles/mqttc.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mqttc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mqttc.dir/build: libmqttc.a

.PHONY : CMakeFiles/mqttc.dir/build

CMakeFiles/mqttc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mqttc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mqttc.dir/clean

CMakeFiles/mqttc.dir/depend:
	cd /home/pi/Desktop/Data-Log-System-S3/mqtt_sub/cmake-build-raspberry-pi && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/Data-Log-System-S3/mqtt_sub /home/pi/Desktop/Data-Log-System-S3/mqtt_sub /home/pi/Desktop/Data-Log-System-S3/mqtt_sub/cmake-build-raspberry-pi /home/pi/Desktop/Data-Log-System-S3/mqtt_sub/cmake-build-raspberry-pi /home/pi/Desktop/Data-Log-System-S3/mqtt_sub/cmake-build-raspberry-pi/CMakeFiles/mqttc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mqttc.dir/depend

