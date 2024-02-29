#include "../include/MyServer.h"
#include "../chatroom/include/ChatManager.h"
#include <qdebug.h>
#include <QDataStream>
#include <QRandomGenerator>

//struct ClientInfo {
//    QColor color;
//    QString nickname;
//};

//QMap<QTcpSocket*, ClientInfo> clientInfoMap;

MyServer::MyServer(const QString &ipAddress, quint16 port)
{
    tcpServer = new QTcpServer(this);
    connect(tcpServer , &QTcpServer::newConnection , this ,  &MyServer::handleNewConnection );

    nClientConnected = 0;
    QHostAddress address(ipAddress);
//    QHostAddress address("localhost");

    if (tcpServer->listen(address,port))
    {
        qDebug() << "Server listening on" << address << ":" << port;
    }
    else
    {
        qDebug() << "Failed to start server" << tcpServer->errorString();
    }

    userColors << QColor(255, 0, 0)  // Rosso scuro
               << QColor(0, 255, 0)  // Verde scuro
               << QColor(0, 0, 255)  // Blu scuro
               << QColor(255, 255, 0)  // Giallo scuro
               << QColor(0, 255, 255)  // Ciano scuro
               << QColor(255, 0, 255)  // Magenta scuro
               << QColor(128, 0, 0)  // Marrone scuro
               << QColor(0, 128, 0)  // Verde oliva scuro
               << QColor(0, 0, 128)  // Blu notte scuro
               << QColor(128, 128, 0)  // Verde oliva scuro
               << QColor(128, 0, 128)  // Viola scuro
               << QColor(0, 128, 128)  // Verde acqua scuro
               << QColor(128, 128, 128)  // Grigio scuro
               << QColor(64, 0, 0)  // Rosso scuro
               << QColor(0, 64, 0)  // Verde scuro
               << QColor(0, 0, 64)  // Blu scuro
               << QColor(64, 64, 0)  // Giallo scuro
               << QColor(0, 64, 64)  // Ciano scuro
               << QColor(64, 0, 64);  // Magenta scuro
}

void MyServer::handleNewConnection()
{
//    qDebug() << "Ciao nuovo client connesso";
    QTcpSocket* clientSocket = tcpServer->nextPendingConnection();
    if (clientSocket)
    {
//        clients.append(clientSocket);

        connect(clientSocket, &QTcpSocket::readyRead, this, &MyServer::readClientData);
//        connect(clientSocket, &QTcpSocket::disconnected, this, &MyServer::onDisconnected);
        connect( clientSocket , &QTcpSocket::disconnected , this , &MyServer::onClientDisconnected);

//        QDataStream nicknameStream(clientSocket);
//        QString clientNickname;
//        nicknameStream >> clientNickname;

//        qDebug() << "Client connected:" << clientSocket->peerAddress().toString() << "Nickname: " << clientNickname;

//        qDebug() << "New connection from:" << clientSocket->peerAddress().toString();
//        ChatManager::getInstance().getChatRoom()->show();

        QColor clientColor = assignColorToClient();

        // Crea un'istanza di ClientInfo con il colore
        ClientInfo clientInfo = {clientColor, ""};

        // Associa la socket alle informazioni del client nel QMap
        clientMap.insert(clientSocket, clientInfo);


        QByteArray colorMessage;
        QDataStream colorStream(&colorMessage,QIODevice::WriteOnly);
        colorStream << clientColor;


        clientSocket->write(colorMessage);
        clientSocket->flush();

        nClientConnected++;
    }

}

void MyServer::readClientData()
{
    for (QTcpSocket *client : clientMap.keys() )
    {
        if (client->bytesAvailable() > 0)
        {
            QDataStream in(client);
            in.setVersion(QDataStream::Qt_5_15);

            QString message;
            in >> message;

            if (message == "NICKNAME")
            {
                QString clientNickname;
                in >> clientNickname;

                qDebug() << "Client nickname received:" << clientNickname;

                if( !isUserNameAvaialable(clientNickname) )
                {
                    qDebug() << "Nickname already exists. Disconnecting client:" << clientNickname;

                    // Invia un messaggio di errore al ClientConfigDialog
                    QThread::msleep(100);

                    QByteArray errorMessage;
                    QDataStream errorStream(&errorMessage, QIODevice::WriteOnly);
                    errorStream << QString("ERROR:NICKNAME_ALREADY_EXISTS:%1").arg(clientNickname);
                    client->write(errorMessage);
                    client->flush();

                    // Disconnette il client
                    client->disconnectFromHost();
                    return;
                }

                ClientInfo clientInfo = clientMap.value(client);

                clientInfo.nickname = clientNickname;

                clientMap.insert(client, clientInfo);


                sendBroadCast(client,QString("New User %1 connected").arg(clientInfo.nickname) , "NEW_USER");
                sendConnectedUserList(client);
//                sendBroadCast(nullptr, nullptr,"UPDATE_N_CLIENT");
//                if (clientInfoMap.contains(client)) {
//                    qDebug() << "Record aggiunto con successo per la socket:" << client;
//
//                    // Puoi anche ottenere e stampare le informazioni del record
//                    ClientInfo clientInfo = clientInfoMap.value(client);
//                    qDebug() << "Colore:" << clientInfo.color << ", Nickname:" << clientInfo.nickname;
//                } else {
//                    qDebug() << "Errore nell'aggiunta del record per la socket:" << client;
//                }

            }

            else
            {

                qDebug() << "Data received from" << client->peerAddress().toString() << ":" << message;

    //            QString sender = message.section(':', 0, 0);
    //            message = message.section(':', 1);
                QString colorString = message.section('|', 0, 0);
                QString senderAndText = message.section('|', 1);

                QString sender = senderAndText.section(':', 0, 0);
                QString text = senderAndText.section(':', 1);

    //            qDebug() << colorString << " " << sender << " " << text;

                for (QTcpSocket *receiver: clientMap.keys() )
                {
                        if (receiver != client)
                        {
                            QDataStream out(receiver);
                            out.setVersion(QDataStream::Qt_5_15);
    //                    out << message;
                            out << QString("%1|%2: %3").arg(colorString, sender, text);

                            if (receiver->flush() == -1)
                            {
                                qDebug() << "Errore durante l'invio del messaggio al client.";
                            }

                            qDebug() << "Message forwarded to" << receiver->peerAddress().toString();
                        }
                }
            }
        }
    }
}


void MyServer::onClientDisconnected()
{
    QTcpSocket* disconnectedClient = qobject_cast<QTcpSocket*>(sender());

    if (disconnectedClient && clientMap.contains(disconnectedClient))
    {
        qDebug() << "Client disconnected:" << disconnectedClient->peerAddress().toString();
//        clients.removeOne(disconnectedClient);

        ClientInfo clientInfo = clientMap.value(disconnectedClient);

        userColors.append(clientInfo.color);

//        qDebug() << "Il colore " << clientInfo.color << " è tornato in userColors";
//        qDebug() << "User Colors after client disconnect:" << userColors;
        nClientConnected--;
        sendBroadCast(disconnectedClient , QString(" User %1 disconnected").arg(clientInfo.nickname) , "USER_DISCONNECTED");
        clientMap.remove(disconnectedClient);
        qDebug() << "nClientConnected " << nClientConnected;
        disconnectedClient->deleteLater();

    }
}

QColor MyServer::generateRandomColor()
{
    if (!userColors.isEmpty())
    {
        int randomIndex = QRandomGenerator::global()->bounded(userColors.size());
        return userColors[randomIndex];
    }

    return Qt::black;
}

QColor MyServer::assignColorToClient()
{
    QColor clientColor = generateRandomColor();

    userColors.removeAll(clientColor);

    qDebug() << "Size remove all " << userColors.size();
    return clientColor;
}

void MyServer::sendBroadCast(QTcpSocket *client , const QString &message , const QString &type_broadcast ) {
    if (type_broadcast == "NEW_USER")
    {
        for (QTcpSocket *receiver: clientMap.keys())
        {
            /* C'è un problema legato alle temporizzazioni con ReceiverThread
             * quindi devo usare questo msleep */

            QThread::msleep(100);

            QDataStream out(receiver);
            out.setVersion(QDataStream::Qt_5_15);

            ClientInfo clientInfo = clientMap.value(client);

            out << QString("BROADCAST<NEW_USER>%1|%2: %3||%4").arg(clientInfo.color.name(), clientInfo.nickname,
                                                                   message, QString::number(nClientConnected));
            if (receiver->flush() == -1)
            {
                qDebug() << "Errore durante l'invio del messaggio al client";
            }
        }
    }
    else if (type_broadcast == "USER_DISCONNECTED")
    {
        for (QTcpSocket *receiver: clientMap.keys())
        {
            /* C'è un problema legato alle temporizzazioni con ReceiverThread
             * quindi devo usare questo msleep */

            QThread::msleep(100);

            QDataStream out(receiver);
            out.setVersion(QDataStream::Qt_5_15);

            ClientInfo clientInfo = clientMap.value(client);

            out << QString("BROADCAST<USER_DISCONNECTED>%1|%2: %3||%4").arg(clientInfo.color.name(),
                                                                            clientInfo.nickname, message,
                                                                            QString::number(nClientConnected));
            qDebug() << "BROADCAST DI DISCONNESSIONE "
                     << QString("BROADCAST<USER_DISCONNECTED>%1|%2: %3||%4").arg(clientInfo.color.name(),
                                                                                 clientInfo.nickname,
                                                                                 message), QString::number(
                    nClientConnected);
            if (receiver->flush() == -1)
            {
                qDebug() << "Errore durante l'invio del messaggio al client";
            }
        }
    }
}

void MyServer::sendConnectedUserList(QTcpSocket *clientSocket)
{
    QThread::msleep(100);
    QDataStream out(clientSocket);
    out.setVersion(QDataStream::Qt_5_15);
    QString userlistMessage = "USERLIST";

    QMap<QTcpSocket*, ClientInfo>::const_iterator i = clientMap.constBegin();

    while (i != clientMap.constEnd())
    {
        const ClientInfo &info = i.value();

        userlistMessage += QString("%1|%2%3").arg(info.color.name(), info.nickname, "&");

        ++i;
    }

    qDebug() << "Sending USERLIST:" << userlistMessage;

    out << userlistMessage;
}

bool MyServer::isUserNameAvaialable(const QString &username)
{
    QMap<QTcpSocket*, ClientInfo>::const_iterator i = clientMap.constBegin();

    while (i != clientMap.constEnd())
    {
        const ClientInfo &info = i.value();

        if (info.nickname == username)
        {
            return false;
        }

        ++i;
    }

    return true;
}