#include "../include/ChatManager.h"

ChatManager::ChatManager(QObject *parent) : QObject(parent), chatRoom(nullptr)
{
    // Inizializza eventuali membri aggiuntivi qui
}



ChatManager& ChatManager::getInstance()
{
    static ChatManager instance;
    return instance;
}


ChatManager::~ChatManager()
{
    // Aggiungi eventuali operazioni di cleanup necessarie per il distruttore
}

ChatRoom* ChatManager::getChatRoom()
{
    if( !chatRoom )
    {
//        chatRoom = new ChatRoom();
    }
    return chatRoom;
}

void ChatManager::onMessageSent(const QString& message)
{
    // Aggiungi la logica per gestire il messaggio inviato
    // In questo esempio, puoi semplicemente stampare il messaggio sulla console
    qDebug() << "Message sent from MyClient to ChatRoom: " << message;
}