#include "../chatroom/include/Message.h"

Message::Message(const QString &sender, const QString &text, const QDateTime &timestamp)
    : sender(sender) , text(text) , timestamp(timestamp)
{

}

QString Message::getSender() const
{
    return sender;
}

QString Message::getText() const
{
    return text;
}

QDateTime Message::getTimestamp() const
{
    return timestamp;
}