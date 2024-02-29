#include "../include/SenderThread.h"
#include <QTextStream>
#include <QDataStream>

SenderThread::SenderThread(QTcpSocket *socket, QObject *parent)  // Lista di inizializzazione
    : QThread(parent) , socket(socket)
{
}

void SenderThread::run()
{
    if (!socket)
    {
        qDebug() << "Invalid socket!";
        return;
    }
    QTextStream stream(stdin);


    while( !isInterruptionRequested() )
    {
//        qDebug() << "Inserisci un messaggio: ";
        QString userMessage = stream.readLine().trimmed();


        if( !userMessage.isEmpty() )
        {
            QByteArray data;
            QDataStream out(&data , QIODevice::WriteOnly);
            out.setVersion(QDataStream::Qt_5_15);
            out << userMessage;

            /* Risolve il problema del QSocketNotifier che salta fuori perchè eseguo socket-write() all'interno del
             * SenderThread e così facendo chiamando riuscendo a invocare writeSocket in questo modo che è uno slot nel Client
             * i client riescono a scambiarsi i messaggi senza i fastidiosi avvisi del QSOcketNotifier */

            QMetaObject::invokeMethod(parent(), "writeToSocket", Qt::QueuedConnection,
                                      Q_ARG(QByteArray, data));

//            socket->write(data);
//            socket->flush();

//            emit messageSent(userMessage);
        }

    }
//
}

//void SenderThread::readConsoleInput()
//{
//    QTextStream stream(stdin);
//    QString userMessage;
//
//    while( !stream.atEnd() )
//    {
//        userMessage = stream.readLine().trimmed();
//
//        if( !userMessage.isEmpty() )
//        {
//            QByteArray data;
//            QDataStream out(&data,QIODevice::WriteOnly);
//            out.setVersion(QDataStream::Qt_5_15);
//            out << userMessage;
//
//            socket->write(data);
//            socket->flush();
//
//            emit messageSent(userMessage);
//        }
//    }
//}

//void SenderThread::sendPeriodicMessage()
//{
//    QByteArray data;
//    QDataStream out(&data, QIODevice::WriteOnly);
//    out.setVersion(QDataStream::Qt_5_15);
//    out << QString("Ping");
//
//    socket->write(data);
//    socket->flush();
//}




