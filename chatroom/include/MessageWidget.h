

#ifndef CHATROOM_MESSAGEWIDGET_H
#define CHATROOM_MESSAGEWIDGET_H

#ifndef MESSAGEWIDGET_H
#define MESSAGEWIDGET_H

#include <QFrame>
#include <QLabel>
#include <QVBoxLayout>
#include "Message.h"

class MessageWidget : public QFrame {
Q_OBJECT
public:
    explicit MessageWidget(const Message& message, const QColor& userColor ,const QColor& textColor , QWidget* parent = nullptr);

private:
    void setupUI();

    QLabel* senderLabel;
    QLabel* timestampLabel;
    QLabel* textLabel;
};

#endif // MESSAGEWIDGET_H

#endif //CHATROOM_MESSAGEWIDGET_H
