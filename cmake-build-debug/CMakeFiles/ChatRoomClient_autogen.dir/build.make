# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /snap/clion/250/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /snap/clion/250/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug

# Utility rule file for ChatRoomClient_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/ChatRoomClient_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ChatRoomClient_autogen.dir/progress.make

CMakeFiles/ChatRoomClient_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target ChatRoomClient"
	/snap/clion/250/bin/cmake/linux/x64/bin/cmake -E cmake_autogen /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles/ChatRoomClient_autogen.dir/AutogenInfo.json Debug

ChatRoomClient_autogen: CMakeFiles/ChatRoomClient_autogen
ChatRoomClient_autogen: CMakeFiles/ChatRoomClient_autogen.dir/build.make
.PHONY : ChatRoomClient_autogen

# Rule to build all files generated by this target.
CMakeFiles/ChatRoomClient_autogen.dir/build: ChatRoomClient_autogen
.PHONY : CMakeFiles/ChatRoomClient_autogen.dir/build

CMakeFiles/ChatRoomClient_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ChatRoomClient_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ChatRoomClient_autogen.dir/clean

CMakeFiles/ChatRoomClient_autogen.dir/depend:
	cd /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles/ChatRoomClient_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ChatRoomClient_autogen.dir/depend

