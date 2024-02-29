

#ifndef CHATROOM_MYCLIENT_H
#define CHATROOM_MYCLIENT_H

#include "../../thread/include/SenderThread.h"
#include "../../thread/include/ReceiverThread.h"
#include <QObject>
#include <QtNetwork/QTcpSocket>
#include "../chatroom/include/ChatRoom.h"

class MyClient : public QObject
{
    Q_OBJECT

public:
    explicit MyClient(QObject* parent = nullptr);
    void connectToServer(const QString& ipAddress , quint16 port);
    void sendMessage(const QString &message);
    void sendUserMessage();
    void setMyClient(const QString& newNickName);

    signals:
        void connectionEstablished();


private slots:
    void onConnected();
    void onReadyRead();
    void onMessageSent( const QString &message );
    void onMessageReceived( const QString &message );
    void displayState(QAbstractSocket::SocketState socketState);
    void displayError(QAbstractSocket::SocketError socketError);
    void writeToSocket(const QByteArray& data);

private Q_SLOT:
    void onColorMessageReceived();
private:
    QTcpSocket* socket;
    SenderThread *senderThread;
    ReceiverThread *receiverThread;
    ChatRoom *chatRoom;
    QString nickname;
};


#endif //CHATROOM_MYCLIENT_H
