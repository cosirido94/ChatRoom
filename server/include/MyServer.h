#ifndef CHATROOM_MYSERVER_H
#define CHATROOM_MYSERVER_H

#include <QObject>
#include <QtNetwork/QTcpServer>
#include <QtNetwork/QTcpSocket>
#include <QList>
#include <QColor>

struct ClientInfo
{
    QColor color;
    QString nickname;
};

class MyServer: public QObject
{
    Q_OBJECT

public:
    MyServer(const QString &ipAddress , quint16 port);

public slots:
    void handleNewConnection();
    void readClientData();
    void onClientDisconnected();

private:
    QColor generateRandomColor();
    QColor assignColorToClient();
    void sendBroadCast(QTcpSocket *client ,const QString &message , const QString &type_broadcast);
    void sendConnectedUserList(QTcpSocket *clientSocket);
    bool isUserNameAvaialable(const QString& username);
private:
    QTcpServer *tcpServer;
//    QList<QTcpSocket *> clients;
    QMap<QTcpSocket*,ClientInfo> clientMap;
    QList<QColor> userColors;
    int nClientConnected;
};

#endif //CHATROOM_MYSERVER_H
