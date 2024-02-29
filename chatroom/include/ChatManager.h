#ifndef CHATROOM_CHATMANAGER_H
#define CHATROOM_CHATMANAGER_H

#include <QObject>
#include "ChatRoom.h"
#include "../client/include/MyClient.h"

class ChatManager : public QObject
{
    Q_OBJECT

public:
    ~ChatManager();
    static ChatManager& getInstance();
    void setClientNickname(const QString& nickname);
    QString getClientNickname() const;
    ChatRoom* getChatRoom();

private:
    ChatManager(QObject *parent = nullptr);
    ChatManager(const ChatManager&) = delete;
    ChatManager& operator=(const ChatManager&) = delete;

    ChatRoom* chatRoom;

public slots:
    void onMessageSent(const QString& message);
};

#endif //CHATROOM_CHATMANAGER_H
