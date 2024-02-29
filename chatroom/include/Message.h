

#ifndef CHATROOM_MESSAGE_H
#define CHATROOM_MESSAGE_H

#include <QString>
#include <QDateTime>

class Message
{
public:
    Message(const QString& sender , const QString& text , const QDateTime& timestamp );

    QString getSender() const;
    QString getText() const;
    QDateTime getTimestamp() const;

private:
    QString sender;
    QString text;
    QDateTime timestamp;
};

#endif //CHATROOM_MESSAGE_H
