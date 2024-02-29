cmake_minimum_required(VERSION 3.22)
project(ChatRoom)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)


# Crea una variabile contenente il percorso al tuo file CSS
#set(STYLE_FILE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/css/server/style.css)

# Copia il file CSS nella directory di output dell'eseguibile
#configure_file(${STYLE_FILE_PATH} ${CMAKE_CURRENT_BINARY_DIR}/style.css COPYONLY)


find_package(Qt5 COMPONENTS
        Core
        Gui
        Widgets
        Network
        REQUIRED)

include_directories(${CMAKE_SOURCE_DIR}/custom)

add_executable(ChatRoomServer
        server/src/main.cpp
        server/include/ServerConfigDialog.h
        server/src/ServerConfigDialog.cpp
        custom/include/customlineedit.h
        custom/src/customlineedit.cpp
        server/include/MyServer.h
        server/src/MyServer.cpp

#        chatroom/include/ChatRoom.h
#        chatroom/src/ChatRoom.cpp
#        chatroom/include/ChatManager.h
#        chatroom/src/ChatManager.cpp
)
add_executable(ChatRoomClient
        client/include/MyClient.h
        client/src/MyClient.cpp
        client/src/main.cpp
        thread/include/SenderThread.h
        thread/src/SenderThread.cpp
        thread/include/ReceiverThread.h
        thread/src/ReceiverThread.cpp
        custom/include/customlineedit.h
        custom/src/customlineedit.cpp
        client/include/ClientConfigDialog.h
        client/src/ClientConfigDialog.cpp
        chatroom/include/ChatRoom.h
        chatroom/src/ChatRoom.cpp
        chatroom/include/ChatManager.h
        chatroom/src/ChatManager.cpp
        chatroom/include/Message.h
        chatroom/src/Message.cpp
        chatroom/include/MessageWidget.h
        chatroom/src/MessageWidget.cpp
        custom/include/sortedlistwidget.h
        custom/src/sortedlistwidget.cpp
)
target_link_libraries(ChatRoomServer
        Qt5::Core
        Qt5::Gui
        Qt5::Widgets
        Qt5::Network
)

target_link_libraries(ChatRoomClient
        Qt5::Core
        Qt5::Gui
        Qt5::Widgets
        Qt5::Network
)


