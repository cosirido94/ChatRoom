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
include CMakeFiles/ChatRoomServer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ChatRoomServer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ChatRoomServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ChatRoomServer.dir/flags.make

CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.o: CMakeFiles/ChatRoomServer.dir/flags.make
CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.o: ChatRoomServer_autogen/mocs_compilation.cpp
CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.o: CMakeFiles/ChatRoomServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.o -MF CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.o -c /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/ChatRoomServer_autogen/mocs_compilation.cpp

CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/ChatRoomServer_autogen/mocs_compilation.cpp > CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.i

CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/ChatRoomServer_autogen/mocs_compilation.cpp -o CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.s

CMakeFiles/ChatRoomServer.dir/server/main.cpp.o: CMakeFiles/ChatRoomServer.dir/flags.make
CMakeFiles/ChatRoomServer.dir/server/main.cpp.o: /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/main.cpp
CMakeFiles/ChatRoomServer.dir/server/main.cpp.o: CMakeFiles/ChatRoomServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ChatRoomServer.dir/server/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatRoomServer.dir/server/main.cpp.o -MF CMakeFiles/ChatRoomServer.dir/server/main.cpp.o.d -o CMakeFiles/ChatRoomServer.dir/server/main.cpp.o -c /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/main.cpp

CMakeFiles/ChatRoomServer.dir/server/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatRoomServer.dir/server/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/main.cpp > CMakeFiles/ChatRoomServer.dir/server/main.cpp.i

CMakeFiles/ChatRoomServer.dir/server/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatRoomServer.dir/server/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/main.cpp -o CMakeFiles/ChatRoomServer.dir/server/main.cpp.s

CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.o: CMakeFiles/ChatRoomServer.dir/flags.make
CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.o: /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/ServerConfigDialog.cpp
CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.o: CMakeFiles/ChatRoomServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.o -MF CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.o.d -o CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.o -c /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/ServerConfigDialog.cpp

CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/ServerConfigDialog.cpp > CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.i

CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/ServerConfigDialog.cpp -o CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.s

CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.o: CMakeFiles/ChatRoomServer.dir/flags.make
CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.o: /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/custom/customlineedit.cpp
CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.o: CMakeFiles/ChatRoomServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.o -MF CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.o.d -o CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.o -c /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/custom/customlineedit.cpp

CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/custom/customlineedit.cpp > CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.i

CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/custom/customlineedit.cpp -o CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.s

CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.o: CMakeFiles/ChatRoomServer.dir/flags.make
CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.o: /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/MyServer.cpp
CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.o: CMakeFiles/ChatRoomServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.o -MF CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.o.d -o CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.o -c /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/MyServer.cpp

CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/MyServer.cpp > CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.i

CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/server/MyServer.cpp -o CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.s

# Object files for target ChatRoomServer
ChatRoomServer_OBJECTS = \
"CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/ChatRoomServer.dir/server/main.cpp.o" \
"CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.o" \
"CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.o" \
"CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.o"

# External object files for target ChatRoomServer
ChatRoomServer_EXTERNAL_OBJECTS =

ChatRoomServer: CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.o
ChatRoomServer: CMakeFiles/ChatRoomServer.dir/server/main.cpp.o
ChatRoomServer: CMakeFiles/ChatRoomServer.dir/server/ServerConfigDialog.cpp.o
ChatRoomServer: CMakeFiles/ChatRoomServer.dir/custom/customlineedit.cpp.o
ChatRoomServer: CMakeFiles/ChatRoomServer.dir/server/MyServer.cpp.o
ChatRoomServer: CMakeFiles/ChatRoomServer.dir/build.make
ChatRoomServer: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.3
ChatRoomServer: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.15.3
ChatRoomServer: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.3
ChatRoomServer: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.3
ChatRoomServer: CMakeFiles/ChatRoomServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ChatRoomServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatRoomServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ChatRoomServer.dir/build: ChatRoomServer
.PHONY : CMakeFiles/ChatRoomServer.dir/build

CMakeFiles/ChatRoomServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ChatRoomServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ChatRoomServer.dir/clean

CMakeFiles/ChatRoomServer.dir/depend:
	cd /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/cmake-build-debug/CMakeFiles/ChatRoomServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ChatRoomServer.dir/depend
