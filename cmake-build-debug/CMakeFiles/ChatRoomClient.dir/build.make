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

# Include any dependencies generated for this target.
include CMakeFiles/ChatRoomClient.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ChatRoomClient.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ChatRoomClient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ChatRoomClient.dir/flags.make

CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.o: CMakeFiles/ChatRoomClient.dir/flags.make
CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.o: ChatRoomClient_autogen/mocs_compilation.cpp
CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.o: CMakeFiles/ChatRoomClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.o -MF CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.o -c /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/ChatRoomClient_autogen/mocs_compilation.cpp

CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/ChatRoomClient_autogen/mocs_compilation.cpp > CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.i

CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/ChatRoomClient_autogen/mocs_compilation.cpp -o CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.s

CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.o: CMakeFiles/ChatRoomClient.dir/flags.make
CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.o: /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/client/MyClient.cpp
CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.o: CMakeFiles/ChatRoomClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.o -MF CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.o.d -o CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.o -c /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/client/MyClient.cpp

CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/client/MyClient.cpp > CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.i

CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/client/MyClient.cpp -o CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.s

CMakeFiles/ChatRoomClient.dir/client/main.cpp.o: CMakeFiles/ChatRoomClient.dir/flags.make
CMakeFiles/ChatRoomClient.dir/client/main.cpp.o: /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/client/main.cpp
CMakeFiles/ChatRoomClient.dir/client/main.cpp.o: CMakeFiles/ChatRoomClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ChatRoomClient.dir/client/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatRoomClient.dir/client/main.cpp.o -MF CMakeFiles/ChatRoomClient.dir/client/main.cpp.o.d -o CMakeFiles/ChatRoomClient.dir/client/main.cpp.o -c /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/client/main.cpp

CMakeFiles/ChatRoomClient.dir/client/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatRoomClient.dir/client/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/client/main.cpp > CMakeFiles/ChatRoomClient.dir/client/main.cpp.i

CMakeFiles/ChatRoomClient.dir/client/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatRoomClient.dir/client/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/client/main.cpp -o CMakeFiles/ChatRoomClient.dir/client/main.cpp.s

# Object files for target ChatRoomClient
ChatRoomClient_OBJECTS = \
"CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.o" \
"CMakeFiles/ChatRoomClient.dir/client/main.cpp.o"

# External object files for target ChatRoomClient
ChatRoomClient_EXTERNAL_OBJECTS =

ChatRoomClient: CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.o
ChatRoomClient: CMakeFiles/ChatRoomClient.dir/client/MyClient.cpp.o
ChatRoomClient: CMakeFiles/ChatRoomClient.dir/client/main.cpp.o
ChatRoomClient: CMakeFiles/ChatRoomClient.dir/build.make
ChatRoomClient: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.3
ChatRoomClient: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.15.3
ChatRoomClient: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.3
ChatRoomClient: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.3
ChatRoomClient: CMakeFiles/ChatRoomClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ChatRoomClient"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatRoomClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ChatRoomClient.dir/build: ChatRoomClient
.PHONY : CMakeFiles/ChatRoomClient.dir/build

CMakeFiles/ChatRoomClient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ChatRoomClient.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ChatRoomClient.dir/clean

CMakeFiles/ChatRoomClient.dir/depend:
	cd /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles/ChatRoomClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ChatRoomClient.dir/depend

