// ChatRoom.h
#ifndef CHATROOM_CHATROOM_H
#define CHATROOM_CHATROOM_H

#include <QWidget>
#include <QTextEdit>
#include <QLineEdit>
#include <QPushButton>
#include <QVBoxLayout>
#include <QScrollArea>
#include <QScrollBar>
#include <QListWidget>
#include "../chatroom/include/MessageWidget.h"
#include "../custom/include/sortedlistwidget.h"

struct MessageComponents
{
    QString colorSender;
    QString sender;
    QString text;
    unsigned int nClientConnected;
};

class ChatRoom : public QWidget {
Q_OBJECT

public:
    explicit ChatRoom(const QString &nickname, QWidget *parent = nullptr);
    void setUserColor(QColor userColor);

signals:

    void messageSent(const QString message);


private slots:

    void sendUserMessage();

public slots:

    void handleMessageReceived(const QString &message);
    void handleBroadCastMessage(const QString &message);
    void handleUserListReceived(const QString &message);
private:
    QLineEdit *messageInput;
    QPushButton *sendButton;
    QVBoxLayout *chatDisplayLayout;  // Layout per i MessageWidget
    QScrollArea *scrollArea;  // Permette la visualizzazione di più messaggi
    QWidget *chatDisplayContainer;  // Contenitore per chatDisplayLayout
//    QVBoxLayout *mainLayout;  // Layout principale
    QGridLayout *mainLayout;
    QLineEdit *userSearchInput;
//    QListWidget *userListWidget;
    SortedListWidget *userListWidget;
    QLabel *connectedUsersLabel;
    QString nickname;
    QColor userColor;

private:
    void appendMessage(MessageWidget *message);
    void extractMessage( const QString message , MessageComponents& components , bool extract_nClientConnected = false);
    void updateScrollBar();
    void updateNumberClientConnected( unsigned int nClient );
    void appendListUser(const QString &nickname, const QString &color);
    void removeListUser(const QString &nickname);
    void searchUsers(const QString &text);
};
#endif // CHATROOM_CHATROOM_H
