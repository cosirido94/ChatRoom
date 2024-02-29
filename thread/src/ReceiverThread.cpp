#include "../include/ReceiverThread.h"
#include <QDataStream>

ReceiverThread::ReceiverThread(QTcpSocket *socket, QObject *parent)
    : QThread(parent) , socket(socket)
{
    connect(socket,&QTcpSocket::readyRead , this , &ReceiverThread::readData);
}

void ReceiverThread::run()
{
    qDebug() << "Receiver Thread is running";
    exec();
//    while( !isInterruptionRequested() )
//    {
//
//        if ( socket->waitForReadyRead(-1) )
//        {
//            QByteArray data = socket->readAll();
//            QDataStream in(&data , QIODevice::ReadOnly);
//
//            QString message;
//            in >> message;
//
//            if( !message.isEmpty() )
//            {
//                emit messageReceived(message);
//            }
//        }
//    }
}

void ReceiverThread::readData()
{
    while (socket->bytesAvailable() > 0 )
    {
        QByteArray data = socket->readAll();
        QDataStream in(&data,QIODevice::ReadOnly);

        QString message;
        in >> message;

        if( !message.isEmpty() )
        {
//            qDebug() << "Messaggio ricevuto " << message;
            if(message.startsWith("BROADCAST"))
            {
                qDebug() << "BROADCAST message received!!!";
                emit broadcastMessageReceived(message);
            }
            else if(message.startsWith("USERLIST"))
            {
                qDebug() << "USERLIST RECEIVED";
                emit userListReceived(message);
            }
            else if (message.startsWith("ERROR"))
            {
                qDebug() << "ERROR RECEIVED";
            }
            else
                emit messageReceived(message);
        }
    }
}
