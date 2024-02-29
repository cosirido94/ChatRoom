#ifndef CHATROOM_RECEIVERTHREAD_H
#define CHATROOM_RECEIVERTHREAD_H

#include <QThread>
#include <QTcpSocket>

class ReceiverThread : public QThread
{
    Q_OBJECT
public:
    explicit ReceiverThread(QTcpSocket *socket , QObject *parent = nullptr );
    void readData();

    signals:
        void messageReceived(const QString &message);
        void broadcastMessageReceived(const QString &message);
        void userListReceived(const QString &message);

protected:
    void run() override;

private:
    QTcpSocket *socket;
};

#endif //CHATROOM_RECEIVERTHREAD_H
