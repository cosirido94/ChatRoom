# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /snap/clion/265/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /snap/clion/265/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "No interactive CMake dialog available..."
	/snap/clion/265/bin/cmake/linux/x64/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/snap/clion/265/bin/cmake/linux/x64/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/CMakeFiles /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named ChatRoomServer

# Build rule for target.
ChatRoomServer: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ChatRoomServer
.PHONY : ChatRoomServer

# fast build rule for target.
ChatRoomServer/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/build
.PHONY : ChatRoomServer/fast

#=============================================================================
# Target rules for targets named ChatRoomClient

# Build rule for target.
ChatRoomClient: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ChatRoomClient
.PHONY : ChatRoomClient

# fast build rule for target.
ChatRoomClient/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/build
.PHONY : ChatRoomClient/fast

#=============================================================================
# Target rules for targets named ChatRoomServer_autogen

# Build rule for target.
ChatRoomServer_autogen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ChatRoomServer_autogen
.PHONY : ChatRoomServer_autogen

# fast build rule for target.
ChatRoomServer_autogen/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer_autogen.dir/build.make CMakeFiles/ChatRoomServer_autogen.dir/build
.PHONY : ChatRoomServer_autogen/fast

#=============================================================================
# Target rules for targets named ChatRoomClient_autogen

# Build rule for target.
ChatRoomClient_autogen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ChatRoomClient_autogen
.PHONY : ChatRoomClient_autogen

# fast build rule for target.
ChatRoomClient_autogen/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient_autogen.dir/build.make CMakeFiles/ChatRoomClient_autogen.dir/build
.PHONY : ChatRoomClient_autogen/fast

ChatRoomClient_autogen/mocs_compilation.o: ChatRoomClient_autogen/mocs_compilation.cpp.o
.PHONY : ChatRoomClient_autogen/mocs_compilation.o

# target to build an object file
ChatRoomClient_autogen/mocs_compilation.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.o
.PHONY : ChatRoomClient_autogen/mocs_compilation.cpp.o

ChatRoomClient_autogen/mocs_compilation.i: ChatRoomClient_autogen/mocs_compilation.cpp.i
.PHONY : ChatRoomClient_autogen/mocs_compilation.i

# target to preprocess a source file
ChatRoomClient_autogen/mocs_compilation.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.i
.PHONY : ChatRoomClient_autogen/mocs_compilation.cpp.i

ChatRoomClient_autogen/mocs_compilation.s: ChatRoomClient_autogen/mocs_compilation.cpp.s
.PHONY : ChatRoomClient_autogen/mocs_compilation.s

# target to generate assembly for a file
ChatRoomClient_autogen/mocs_compilation.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/ChatRoomClient_autogen/mocs_compilation.cpp.s
.PHONY : ChatRoomClient_autogen/mocs_compilation.cpp.s

ChatRoomServer_autogen/mocs_compilation.o: ChatRoomServer_autogen/mocs_compilation.cpp.o
.PHONY : ChatRoomServer_autogen/mocs_compilation.o

# target to build an object file
ChatRoomServer_autogen/mocs_compilation.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.o
.PHONY : ChatRoomServer_autogen/mocs_compilation.cpp.o

ChatRoomServer_autogen/mocs_compilation.i: ChatRoomServer_autogen/mocs_compilation.cpp.i
.PHONY : ChatRoomServer_autogen/mocs_compilation.i

# target to preprocess a source file
ChatRoomServer_autogen/mocs_compilation.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.i
.PHONY : ChatRoomServer_autogen/mocs_compilation.cpp.i

ChatRoomServer_autogen/mocs_compilation.s: ChatRoomServer_autogen/mocs_compilation.cpp.s
.PHONY : ChatRoomServer_autogen/mocs_compilation.s

# target to generate assembly for a file
ChatRoomServer_autogen/mocs_compilation.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/ChatRoomServer_autogen/mocs_compilation.cpp.s
.PHONY : ChatRoomServer_autogen/mocs_compilation.cpp.s

chatroom/src/ChatManager.o: chatroom/src/ChatManager.cpp.o
.PHONY : chatroom/src/ChatManager.o

# target to build an object file
chatroom/src/ChatManager.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/ChatManager.cpp.o
.PHONY : chatroom/src/ChatManager.cpp.o

chatroom/src/ChatManager.i: chatroom/src/ChatManager.cpp.i
.PHONY : chatroom/src/ChatManager.i

# target to preprocess a source file
chatroom/src/ChatManager.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/ChatManager.cpp.i
.PHONY : chatroom/src/ChatManager.cpp.i

chatroom/src/ChatManager.s: chatroom/src/ChatManager.cpp.s
.PHONY : chatroom/src/ChatManager.s

# target to generate assembly for a file
chatroom/src/ChatManager.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/ChatManager.cpp.s
.PHONY : chatroom/src/ChatManager.cpp.s

chatroom/src/ChatRoom.o: chatroom/src/ChatRoom.cpp.o
.PHONY : chatroom/src/ChatRoom.o

# target to build an object file
chatroom/src/ChatRoom.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/ChatRoom.cpp.o
.PHONY : chatroom/src/ChatRoom.cpp.o

chatroom/src/ChatRoom.i: chatroom/src/ChatRoom.cpp.i
.PHONY : chatroom/src/ChatRoom.i

# target to preprocess a source file
chatroom/src/ChatRoom.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/ChatRoom.cpp.i
.PHONY : chatroom/src/ChatRoom.cpp.i

chatroom/src/ChatRoom.s: chatroom/src/ChatRoom.cpp.s
.PHONY : chatroom/src/ChatRoom.s

# target to generate assembly for a file
chatroom/src/ChatRoom.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/ChatRoom.cpp.s
.PHONY : chatroom/src/ChatRoom.cpp.s

chatroom/src/Message.o: chatroom/src/Message.cpp.o
.PHONY : chatroom/src/Message.o

# target to build an object file
chatroom/src/Message.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/Message.cpp.o
.PHONY : chatroom/src/Message.cpp.o

chatroom/src/Message.i: chatroom/src/Message.cpp.i
.PHONY : chatroom/src/Message.i

# target to preprocess a source file
chatroom/src/Message.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/Message.cpp.i
.PHONY : chatroom/src/Message.cpp.i

chatroom/src/Message.s: chatroom/src/Message.cpp.s
.PHONY : chatroom/src/Message.s

# target to generate assembly for a file
chatroom/src/Message.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/Message.cpp.s
.PHONY : chatroom/src/Message.cpp.s

chatroom/src/MessageWidget.o: chatroom/src/MessageWidget.cpp.o
.PHONY : chatroom/src/MessageWidget.o

# target to build an object file
chatroom/src/MessageWidget.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/MessageWidget.cpp.o
.PHONY : chatroom/src/MessageWidget.cpp.o

chatroom/src/MessageWidget.i: chatroom/src/MessageWidget.cpp.i
.PHONY : chatroom/src/MessageWidget.i

# target to preprocess a source file
chatroom/src/MessageWidget.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/MessageWidget.cpp.i
.PHONY : chatroom/src/MessageWidget.cpp.i

chatroom/src/MessageWidget.s: chatroom/src/MessageWidget.cpp.s
.PHONY : chatroom/src/MessageWidget.s

# target to generate assembly for a file
chatroom/src/MessageWidget.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/chatroom/src/MessageWidget.cpp.s
.PHONY : chatroom/src/MessageWidget.cpp.s

client/src/ClientConfigDialog.o: client/src/ClientConfigDialog.cpp.o
.PHONY : client/src/ClientConfigDialog.o

# target to build an object file
client/src/ClientConfigDialog.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/client/src/ClientConfigDialog.cpp.o
.PHONY : client/src/ClientConfigDialog.cpp.o

client/src/ClientConfigDialog.i: client/src/ClientConfigDialog.cpp.i
.PHONY : client/src/ClientConfigDialog.i

# target to preprocess a source file
client/src/ClientConfigDialog.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/client/src/ClientConfigDialog.cpp.i
.PHONY : client/src/ClientConfigDialog.cpp.i

client/src/ClientConfigDialog.s: client/src/ClientConfigDialog.cpp.s
.PHONY : client/src/ClientConfigDialog.s

# target to generate assembly for a file
client/src/ClientConfigDialog.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/client/src/ClientConfigDialog.cpp.s
.PHONY : client/src/ClientConfigDialog.cpp.s

client/src/MyClient.o: client/src/MyClient.cpp.o
.PHONY : client/src/MyClient.o

# target to build an object file
client/src/MyClient.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/client/src/MyClient.cpp.o
.PHONY : client/src/MyClient.cpp.o

client/src/MyClient.i: client/src/MyClient.cpp.i
.PHONY : client/src/MyClient.i

# target to preprocess a source file
client/src/MyClient.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/client/src/MyClient.cpp.i
.PHONY : client/src/MyClient.cpp.i

client/src/MyClient.s: client/src/MyClient.cpp.s
.PHONY : client/src/MyClient.s

# target to generate assembly for a file
client/src/MyClient.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/client/src/MyClient.cpp.s
.PHONY : client/src/MyClient.cpp.s

client/src/main.o: client/src/main.cpp.o
.PHONY : client/src/main.o

# target to build an object file
client/src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/client/src/main.cpp.o
.PHONY : client/src/main.cpp.o

client/src/main.i: client/src/main.cpp.i
.PHONY : client/src/main.i

# target to preprocess a source file
client/src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/client/src/main.cpp.i
.PHONY : client/src/main.cpp.i

client/src/main.s: client/src/main.cpp.s
.PHONY : client/src/main.s

# target to generate assembly for a file
client/src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/client/src/main.cpp.s
.PHONY : client/src/main.cpp.s

custom/src/customlineedit.o: custom/src/customlineedit.cpp.o
.PHONY : custom/src/customlineedit.o

# target to build an object file
custom/src/customlineedit.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/custom/src/customlineedit.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/custom/src/customlineedit.cpp.o
.PHONY : custom/src/customlineedit.cpp.o

custom/src/customlineedit.i: custom/src/customlineedit.cpp.i
.PHONY : custom/src/customlineedit.i

# target to preprocess a source file
custom/src/customlineedit.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/custom/src/customlineedit.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/custom/src/customlineedit.cpp.i
.PHONY : custom/src/customlineedit.cpp.i

custom/src/customlineedit.s: custom/src/customlineedit.cpp.s
.PHONY : custom/src/customlineedit.s

# target to generate assembly for a file
custom/src/customlineedit.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/custom/src/customlineedit.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/custom/src/customlineedit.cpp.s
.PHONY : custom/src/customlineedit.cpp.s

custom/src/sortedlistwidget.o: custom/src/sortedlistwidget.cpp.o
.PHONY : custom/src/sortedlistwidget.o

# target to build an object file
custom/src/sortedlistwidget.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/custom/src/sortedlistwidget.cpp.o
.PHONY : custom/src/sortedlistwidget.cpp.o

custom/src/sortedlistwidget.i: custom/src/sortedlistwidget.cpp.i
.PHONY : custom/src/sortedlistwidget.i

# target to preprocess a source file
custom/src/sortedlistwidget.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/custom/src/sortedlistwidget.cpp.i
.PHONY : custom/src/sortedlistwidget.cpp.i

custom/src/sortedlistwidget.s: custom/src/sortedlistwidget.cpp.s
.PHONY : custom/src/sortedlistwidget.s

# target to generate assembly for a file
custom/src/sortedlistwidget.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/custom/src/sortedlistwidget.cpp.s
.PHONY : custom/src/sortedlistwidget.cpp.s

server/src/MyServer.o: server/src/MyServer.cpp.o
.PHONY : server/src/MyServer.o

# target to build an object file
server/src/MyServer.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/server/src/MyServer.cpp.o
.PHONY : server/src/MyServer.cpp.o

server/src/MyServer.i: server/src/MyServer.cpp.i
.PHONY : server/src/MyServer.i

# target to preprocess a source file
server/src/MyServer.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/server/src/MyServer.cpp.i
.PHONY : server/src/MyServer.cpp.i

server/src/MyServer.s: server/src/MyServer.cpp.s
.PHONY : server/src/MyServer.s

# target to generate assembly for a file
server/src/MyServer.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/server/src/MyServer.cpp.s
.PHONY : server/src/MyServer.cpp.s

server/src/ServerConfigDialog.o: server/src/ServerConfigDialog.cpp.o
.PHONY : server/src/ServerConfigDialog.o

# target to build an object file
server/src/ServerConfigDialog.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/server/src/ServerConfigDialog.cpp.o
.PHONY : server/src/ServerConfigDialog.cpp.o

server/src/ServerConfigDialog.i: server/src/ServerConfigDialog.cpp.i
.PHONY : server/src/ServerConfigDialog.i

# target to preprocess a source file
server/src/ServerConfigDialog.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/server/src/ServerConfigDialog.cpp.i
.PHONY : server/src/ServerConfigDialog.cpp.i

server/src/ServerConfigDialog.s: server/src/ServerConfigDialog.cpp.s
.PHONY : server/src/ServerConfigDialog.s

# target to generate assembly for a file
server/src/ServerConfigDialog.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/server/src/ServerConfigDialog.cpp.s
.PHONY : server/src/ServerConfigDialog.cpp.s

server/src/main.o: server/src/main.cpp.o
.PHONY : server/src/main.o

# target to build an object file
server/src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/server/src/main.cpp.o
.PHONY : server/src/main.cpp.o

server/src/main.i: server/src/main.cpp.i
.PHONY : server/src/main.i

# target to preprocess a source file
server/src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/server/src/main.cpp.i
.PHONY : server/src/main.cpp.i

server/src/main.s: server/src/main.cpp.s
.PHONY : server/src/main.s

# target to generate assembly for a file
server/src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomServer.dir/build.make CMakeFiles/ChatRoomServer.dir/server/src/main.cpp.s
.PHONY : server/src/main.cpp.s

thread/src/ReceiverThread.o: thread/src/ReceiverThread.cpp.o
.PHONY : thread/src/ReceiverThread.o

# target to build an object file
thread/src/ReceiverThread.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/thread/src/ReceiverThread.cpp.o
.PHONY : thread/src/ReceiverThread.cpp.o

thread/src/ReceiverThread.i: thread/src/ReceiverThread.cpp.i
.PHONY : thread/src/ReceiverThread.i

# target to preprocess a source file
thread/src/ReceiverThread.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/thread/src/ReceiverThread.cpp.i
.PHONY : thread/src/ReceiverThread.cpp.i

thread/src/ReceiverThread.s: thread/src/ReceiverThread.cpp.s
.PHONY : thread/src/ReceiverThread.s

# target to generate assembly for a file
thread/src/ReceiverThread.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/thread/src/ReceiverThread.cpp.s
.PHONY : thread/src/ReceiverThread.cpp.s

thread/src/SenderThread.o: thread/src/SenderThread.cpp.o
.PHONY : thread/src/SenderThread.o

# target to build an object file
thread/src/SenderThread.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/thread/src/SenderThread.cpp.o
.PHONY : thread/src/SenderThread.cpp.o

thread/src/SenderThread.i: thread/src/SenderThread.cpp.i
.PHONY : thread/src/SenderThread.i

# target to preprocess a source file
thread/src/SenderThread.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/thread/src/SenderThread.cpp.i
.PHONY : thread/src/SenderThread.cpp.i

thread/src/SenderThread.s: thread/src/SenderThread.cpp.s
.PHONY : thread/src/SenderThread.s

# target to generate assembly for a file
thread/src/SenderThread.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ChatRoomClient.dir/build.make CMakeFiles/ChatRoomClient.dir/thread/src/SenderThread.cpp.s
.PHONY : thread/src/SenderThread.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... ChatRoomClient_autogen"
	@echo "... ChatRoomServer_autogen"
	@echo "... ChatRoomClient"
	@echo "... ChatRoomServer"
	@echo "... ChatRoomClient_autogen/mocs_compilation.o"
	@echo "... ChatRoomClient_autogen/mocs_compilation.i"
	@echo "... ChatRoomClient_autogen/mocs_compilation.s"
	@echo "... ChatRoomServer_autogen/mocs_compilation.o"
	@echo "... ChatRoomServer_autogen/mocs_compilation.i"
	@echo "... ChatRoomServer_autogen/mocs_compilation.s"
	@echo "... chatroom/src/ChatManager.o"
	@echo "... chatroom/src/ChatManager.i"
	@echo "... chatroom/src/ChatManager.s"
	@echo "... chatroom/src/ChatRoom.o"
	@echo "... chatroom/src/ChatRoom.i"
	@echo "... chatroom/src/ChatRoom.s"
	@echo "... chatroom/src/Message.o"
	@echo "... chatroom/src/Message.i"
	@echo "... chatroom/src/Message.s"
	@echo "... chatroom/src/MessageWidget.o"
	@echo "... chatroom/src/MessageWidget.i"
	@echo "... chatroom/src/MessageWidget.s"
	@echo "... client/src/ClientConfigDialog.o"
	@echo "... client/src/ClientConfigDialog.i"
	@echo "... client/src/ClientConfigDialog.s"
	@echo "... client/src/MyClient.o"
	@echo "... client/src/MyClient.i"
	@echo "... client/src/MyClient.s"
	@echo "... client/src/main.o"
	@echo "... client/src/main.i"
	@echo "... client/src/main.s"
	@echo "... custom/src/customlineedit.o"
	@echo "... custom/src/customlineedit.i"
	@echo "... custom/src/customlineedit.s"
	@echo "... custom/src/sortedlistwidget.o"
	@echo "... custom/src/sortedlistwidget.i"
	@echo "... custom/src/sortedlistwidget.s"
	@echo "... server/src/MyServer.o"
	@echo "... server/src/MyServer.i"
	@echo "... server/src/MyServer.s"
	@echo "... server/src/ServerConfigDialog.o"
	@echo "... server/src/ServerConfigDialog.i"
	@echo "... server/src/ServerConfigDialog.s"
	@echo "... server/src/main.o"
	@echo "... server/src/main.i"
	@echo "... server/src/main.s"
	@echo "... thread/src/ReceiverThread.o"
	@echo "... thread/src/ReceiverThread.i"
	@echo "... thread/src/ReceiverThread.s"
	@echo "... thread/src/SenderThread.o"
	@echo "... thread/src/SenderThread.i"
	@echo "... thread/src/SenderThread.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

