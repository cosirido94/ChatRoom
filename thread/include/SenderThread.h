//
// Created by ilcondor on 27/11/23.
//

#ifndef CHATROOM_SENDERTHREAD_H
#define CHATROOM_SENDERTHREAD_H

#include <QThread>
#include <QTcpSocket>
#include <QMutex>

class SenderThread : public QThread
{
    Q_OBJECT

public:
    explicit SenderThread(QTcpSocket *socket , QObject *parent = nullptr);
    void readConsoleInput();
    void sendPeriodicMessage();

    signals:
        void messageSent(const QString &message);

protected:
    void run() override;

private:
    QTcpSocket *socket;
};

#endif //CHATROOM_SENDERTHREAD_H
