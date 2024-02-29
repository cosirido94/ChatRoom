#include "../include/MyClient.h"
//#include "../chatroom/include/ChatManager.h"
#include <QDebug>
#include <QDataStream>


MyClient::MyClient(QObject *parent) : QObject(parent) , socket(new QTcpSocket(this)) , chatRoom(nullptr)
{
    connect(socket,&QTcpSocket::connected,this,&MyClient::onConnected);
    connect(socket, &QTcpSocket::readyRead, this, &MyClient::onColorMessageReceived);
//    connect(ChatManager::getInstance().getChatRoom(), &ChatRoom::messageSent, this, &MyClient::sendMessage);


//    connect(socket, &QTcpSocket::readyRead, this, &MyClient::onReadyRead);
//    qDebug() << "readyRead signal connected!";
//    connect(socket, QOverload<QAbstractSocket::SocketError>::of(&QAbstractSocket::error),
//            this, &MyClient::displayError);
//    connect(socket, &QAbstractSocket::stateChanged,
//            this, &MyClient::displayState);

    // Creo i thread di invio e ricezione dei messaggi

//    senderThread = new SenderThread(socket , this );
//    connect(senderThread , &SenderThread::messageSent, this , &MyClient::onMessageSent);
//    senderThread->start();
//
//    receiverThread = new ReceiverThread(socket,this);
//    connect(receiverThread , &ReceiverThread::messageReceived , this , &MyClient::onMessageReceived);
//    receiverThread->start();

//    receiverThread = new ReceiverThread(socket, this);

//    connect(receiverThread, &ReceiverThread::messageReceived, ChatManager::getInstance().getChatRoom(), &ChatRoom::appendMessage);

//    receiverThread->start();

}

void MyClient::connectToServer(const QString &ipAddress, quint16 port)
{
    socket->connectToHost("127.0.0.1" , 8081 );

//    if (!socket->waitForConnected(6000))  // Timeout di 5 secondi
//    {
//        qDebug() << "Errore di connessione:" << socket->errorString();
//    }
//    qDebug() << "Socket state after connection attempt:" << socket->state();
}

void MyClient::onConnected()
{
    qDebug() << "Connected to server!";

    QByteArray nicknameMessage;
    QDataStream nicknameStream(&nicknameMessage, QIODevice::WriteOnly);
//        nicknameStream << nickname;
    nicknameStream << QStringLiteral("NICKNAME") << nickname;

    qDebug () << "Nickmand sent" << nickname;

    socket->write(nicknameMessage);
    socket->flush();


//    sendUserMessage();
    // Crea la ChatRoom solo se non è già stata creata
    if (!chatRoom)
    {
        chatRoom = new ChatRoom(nickname);
//        connect(this, &MyClient::messageReceived, chatRoom, &ChatRoom::appendMessage);
//        connect(receiverThread, &ReceiverThread::messageReceived ,  chatRoom , &ChatRoom::appendMessage);
//        chatRoom->setupClient(this);  // Passa l'istanza di MyClient alla ChatRoom
        connect(chatRoom, &ChatRoom::messageSent, this, &MyClient::sendMessage);


        // Emetti il segnale connectionEstablished solo dopo la creazione della ChatRoom
        chatRoom->show();
        emit connectionEstablished();
    }
}

void MyClient::onMessageSent( const QString &message )
{
    qDebug() << "Message sent to server:" << message;
}

void MyClient::onMessageReceived(const QString &message)
{
    qDebug() << "Message received from server:" << message;
}



void MyClient::sendMessage(const QString &message )
{
    // Logica per inviare il messaggio
    if (socket->state() == QAbstractSocket::ConnectedState)
    {
        QByteArray data;
        QDataStream stream(&data, QIODevice::WriteOnly);
        stream.setVersion(QDataStream::Qt_5_15);
        stream << message;

        socket->write(data);
        socket->flush();  // Assicura che i dati vengano inviati subito

        // Emetti il segnale messageSent quando il messaggio viene inviato
    }
}

void MyClient::onReadyRead()
{
    qDebug() << "Ready to read data from the server...";
    qDebug() << "Bytes available:" << socket->bytesAvailable();
    if (socket->bytesAvailable() > 0)
    {
        QByteArray data = socket->readAll();
        QDataStream in(&data, QIODevice::ReadOnly);

        QString message;
        in >> message;

        qDebug() << "Messaggio ricevuto dal server: " << message;
    }
    else
    {
        qDebug() << "Nessun dato disponibile nel socket.";
    }
}

void MyClient::displayError(QAbstractSocket::SocketError socketError)
{
    qDebug() << "Socket Error:" << socketError << socket->errorString();
}

void MyClient::displayState(QAbstractSocket::SocketState socketState)
{
    qDebug() << "Socket State:" << socketState;
}

//void MyClient::sendUserMessage()
//{
//    // Richiedi all'utente di inserire un messaggio
//    qDebug() << "Inserisci un messaggio:";
//    QTextStream stream(stdin);
//    QString userMessage = stream.readLine();
//
//    // Invia il messaggio al server
//    if (socket->state() == QAbstractSocket::ConnectedState)
//    {
//        QByteArray data;
//        QDataStream stream(&data, QIODevice::WriteOnly);
//        stream.setVersion(QDataStream::Qt_5_15);
//        stream << userMessage;
//
//        socket->write(data);
//        socket->flush();  // Assicura che i dati vengano inviati subito
//    }
//}

void MyClient::writeToSocket(const QByteArray& data)
{
    if (socket)
    {
        socket->write(data);
        socket->flush();
    }
//    emit messageSent(QString::fromUtf8(data)); // Potrebbe essere necessario adattare la conversione da QByteArray a QString
}

void MyClient::setMyClient(const QString& newNickname)
{
    nickname = newNickname;
}

void MyClient::onColorMessageReceived()
{
    if (socket->bytesAvailable() < sizeof(quint32))
        return;  // Non ci sono abbastanza dati da leggere

    QByteArray colorData = socket->readAll();
    QDataStream colorStream(&colorData,QIODevice::ReadOnly);

    QColor userColor;
    colorStream >> userColor;

//    socket->disconnectFromHost();

    disconnect(socket, &QTcpSocket::readyRead, this, &MyClient::onColorMessageReceived);
    if (chatRoom)
    {
        chatRoom->setUserColor(userColor);
        receiverThread = new ReceiverThread(socket);
        connect(receiverThread, &ReceiverThread::messageReceived ,  chatRoom , &ChatRoom::handleMessageReceived);
        connect(receiverThread , &ReceiverThread::broadcastMessageReceived , chatRoom , &ChatRoom::handleBroadCastMessage);
        connect(receiverThread , &ReceiverThread::userListReceived , chatRoom , &ChatRoom::handleUserListReceived);
        receiverThread->start();

    }
}