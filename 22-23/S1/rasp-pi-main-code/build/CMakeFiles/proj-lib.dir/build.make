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
CMAKE_SOURCE_DIR = /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/build

# Include any dependencies generated for this target.
include CMakeFiles/proj-lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/proj-lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/proj-lib.dir/flags.make

CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.o: CMakeFiles/proj-lib.dir/flags.make
CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.o: ../ext-lib/MQTT-C/src/mqtt_pal.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.o -c /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/ext-lib/MQTT-C/src/mqtt_pal.c

CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/ext-lib/MQTT-C/src/mqtt_pal.c > CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.i

CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/ext-lib/MQTT-C/src/mqtt_pal.c -o CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.s

CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.o: CMakeFiles/proj-lib.dir/flags.make
CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.o: ../ext-lib/MQTT-C/src/mqtt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.o -c /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/ext-lib/MQTT-C/src/mqtt.c

CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/ext-lib/MQTT-C/src/mqtt.c > CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.i

CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/ext-lib/MQTT-C/src/mqtt.c -o CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.s

CMakeFiles/proj-lib.dir/src/MCP3008.cpp.o: CMakeFiles/proj-lib.dir/flags.make
CMakeFiles/proj-lib.dir/src/MCP3008.cpp.o: ../src/MCP3008.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/proj-lib.dir/src/MCP3008.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/proj-lib.dir/src/MCP3008.cpp.o -c /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/src/MCP3008.cpp

CMakeFiles/proj-lib.dir/src/MCP3008.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/proj-lib.dir/src/MCP3008.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/src/MCP3008.cpp > CMakeFiles/proj-lib.dir/src/MCP3008.cpp.i

CMakeFiles/proj-lib.dir/src/MCP3008.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/proj-lib.dir/src/MCP3008.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/src/MCP3008.cpp -o CMakeFiles/proj-lib.dir/src/MCP3008.cpp.s

CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.o: CMakeFiles/proj-lib.dir/flags.make
CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.o: ../src/temp_sensor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.o -c /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/src/temp_sensor.cpp

CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/src/temp_sensor.cpp > CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.i

CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/src/temp_sensor.cpp -o CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.s

CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.o: CMakeFiles/proj-lib.dir/flags.make
CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.o: ../src/mqtt_publish.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.o -c /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/src/mqtt_publish.cpp

CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/src/mqtt_publish.cpp > CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.i

CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/src/mqtt_publish.cpp -o CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.s

# Object files for target proj-lib
proj__lib_OBJECTS = \
"CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.o" \
"CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.o" \
"CMakeFiles/proj-lib.dir/src/MCP3008.cpp.o" \
"CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.o" \
"CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.o"

# External object files for target proj-lib
proj__lib_EXTERNAL_OBJECTS =

libproj-lib.a: CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt_pal.c.o
libproj-lib.a: CMakeFiles/proj-lib.dir/ext-lib/MQTT-C/src/mqtt.c.o
libproj-lib.a: CMakeFiles/proj-lib.dir/src/MCP3008.cpp.o
libproj-lib.a: CMakeFiles/proj-lib.dir/src/temp_sensor.cpp.o
libproj-lib.a: CMakeFiles/proj-lib.dir/src/mqtt_publish.cpp.o
libproj-lib.a: CMakeFiles/proj-lib.dir/build.make
libproj-lib.a: CMakeFiles/proj-lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libproj-lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/proj-lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/proj-lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/proj-lib.dir/build: libproj-lib.a

.PHONY : CMakeFiles/proj-lib.dir/build

CMakeFiles/proj-lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/proj-lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/proj-lib.dir/clean

CMakeFiles/proj-lib.dir/depend:
	cd /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/build /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/build /home/pi/Desktop/Data-Log-System-S3/rasp-pi-main-code/build/CMakeFiles/proj-lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/proj-lib.dir/depend
