#include "../include/ChatRoom.h"
#include <QDebug>
#include "../chatroom/include/Message.h"
#include "../chatroom/include/MessageWidget.h"
#include <QTimer>
#include <QGridLayout>
#include <QFormLayout>
#include <QTextBrowser>

ChatRoom::ChatRoom(const QString& nicknameClient,QWidget *parent) : QWidget(parent)
{
//    setFixedSize(900, 500);
//    nickname = nicknameClient;
//    setWindowTitle(nickname);

//    messageInput = new QLineEdit(this);
//    sendButton = new QPushButton("Send", this);
//    chatDisplayLayout = new QVBoxLayout();
//    scrollArea = new QScrollArea();
//    chatDisplayContainer = new QWidget();
//    mainLayout = new QVBoxLayout(this);
//
//    chatDisplayContainer->setLayout(chatDisplayLayout);
////    chatDisplayContainer->setMinimumSize(250, 100);
//    chatDisplayContainer->setSizePolicy(QSizePolicy::Preferred, QSizePolicy::Maximum);
//
//
//    scrollArea->setWidget(chatDisplayContainer);
//    scrollArea->setWidgetResizable(true);  // Rende il widget interno (chatDisplayContainer) ridimensionabile
//    scrollArea->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
//
//    mainLayout->addWidget(scrollArea);
//    mainLayout->addWidget(messageInput);
//    mainLayout->addWidget(sendButton);
//
//    connect(sendButton, &QPushButton::clicked, this, &ChatRoom::sendUserMessage);
//
//    setLayout(mainLayout);

    setFixedSize(900, 500);
    nickname = nicknameClient;
    setWindowTitle(nickname);

    mainLayout = new QGridLayout(this);

    scrollArea = new QScrollArea();
    chatDisplayContainer = new QWidget();
    chatDisplayLayout = new QVBoxLayout();
    chatDisplayContainer->setLayout(chatDisplayLayout);
    chatDisplayContainer->setSizePolicy(QSizePolicy::Preferred, QSizePolicy::Maximum);
    scrollArea->setWidget(chatDisplayContainer);
    scrollArea->setWidgetResizable(true);
    mainLayout->addWidget(scrollArea, 0, 0, 6, 4);  // Row: 0, Col: 0, Row Span: 6, Col Span: 4

    messageInput = new QLineEdit(this);
    mainLayout->addWidget(messageInput, 6, 0, 1, 2);  // Row: 6, Col: 0, Row Span: 1, Col Span: 2

    sendButton = new QPushButton("Send", this);
    mainLayout->addWidget(sendButton, 6, 2, 1, 2);  // Row: 6, Col: 2, Row Span: 1, Col Span: 2

    connectedUsersLabel = new QLabel("Connected Users: 0", this);
    mainLayout->addWidget(connectedUsersLabel, 0, 4, 1, 1);  // Row: 0, Col: 4, Row Span: 1, Col Span: 1

    userSearchInput = new QLineEdit(this);
    mainLayout->addWidget(userSearchInput, 0, 5, 1, 1);  // Row: 0, Col: 5, Row Span: 1, Col Span: 1

//    userListWidget = new QListWidget(this);
    userListWidget = new SortedListWidget(this);
    mainLayout->addWidget(userListWidget, 1, 4, 6, 1.5);

    mainLayout->setColumnStretch(0, 6);
    mainLayout->setColumnStretch(4, 1);

//    mainLayout->setRowStretch(0, 1);
//    mainLayout->setRowStretch(6, 1);

//    mainLayout->setSpacing(20);
    mainLayout->setHorizontalSpacing(20);
//    mainLayout->setColumnMinimumWidth(0, 450);  // Sostituisci con il valore minimo desiderato per la colonna 0
//    mainLayout->setColumnMinimumWidth(1,450);

    setLayout(mainLayout);

    connect(sendButton, &QPushButton::clicked, this, &ChatRoom::sendUserMessage);

//    for(int i = 0 ; i < 40 ; i++)
//    {
//        QString username = "NuovoUtente"; // Sostituisci con il nome utente reale
//        userListWidget->addItem(username);
//    }

      connect(userSearchInput , &QLineEdit::textChanged , this , &ChatRoom::searchUsers);
      connect(messageInput, &QLineEdit::returnPressed, this, &ChatRoom::sendUserMessage);

}

void ChatRoom::setUserColor(QColor userColor)
{
    this->userColor = userColor;
}

void ChatRoom::sendUserMessage()
{
    if ( !messageInput->text().isEmpty() )
    {
        QString messageText = messageInput->text();

        /* Serializza il messaggio da spedire al server nella forma
         * #colore|nome_utente: testo del messaggio */

        QString fullMessage = QString("%1|%2: %3").arg(userColor.name(), nickname, messageText);

        Message message(nickname, messageText, QDateTime::currentDateTime());

        MessageWidget *messageWidget = new MessageWidget(message, userColor, Qt::black, this);

        appendMessage(messageWidget);

        emit messageSent(fullMessage);
    }
}

void ChatRoom::handleMessageReceived(const QString& message)
{
    MessageComponents components;
    extractMessage(message , components );

    Message fullMsg(components.sender, components.text, QDateTime::currentDateTime());

    MessageWidget *messageWidget = new MessageWidget(fullMsg, components.colorSender ,  Qt::black, this);

    appendMessage(messageWidget);
}

void ChatRoom::handleBroadCastMessage(const QString &message)
{
    /* Devo togliere BROADCAST dal messaggio estrando il tipo di
     * broadcast che è tra parentesi angolari <type broadcast> */

    QString messageParsed = message;
    QString type_broadcast;
    messageParsed.remove("BROADCAST");
    int endIndex = messageParsed.indexOf('>', 0);
    if (endIndex != -1 )
    {
        type_broadcast = messageParsed.mid(1, endIndex - 1);
        messageParsed.remove(0,endIndex+1);
    }
    qDebug() << "Messaggio modificato" << messageParsed;

    if (type_broadcast == "NEW_USER")
    {
        MessageComponents components;
        extractMessage(messageParsed , components , true );
        qDebug() << components.nClientConnected;

        /* Cambia la stringa di testo da New User <nome utente> connected a
         *                               New User font color=#components.colorSender> components.sender </font>
         * Per verificare fai qDebug() << components.text
         */
        components.text.replace(components.sender, QString("<font color='%1'>%2</font>").arg(components.colorSender, components.sender));

        Message fullMsg("/********** SERVER **********/", components.text, QDateTime::currentDateTime());

        MessageWidget *messageWidget = new MessageWidget(fullMsg, Qt::darkRed , Qt::darkGreen, this);

        appendMessage(messageWidget);

        updateNumberClientConnected( components.nClientConnected );
        if (nickname != components.sender)
        {
//            appendListUser(components.sender , components.colorSender);
            userListWidget->addItem(components.sender  , components.colorSender);
        }
    }
    else if (type_broadcast == "USER_DISCONNECTED")
    {
        MessageComponents components;
        extractMessage(messageParsed,components , true );

        components.text.replace(components.sender, QString("<font color='%1'>%2</font>").arg(components.colorSender, components.sender));
        Message fullMsg("/********** SERVER **********/", components.text, QDateTime::currentDateTime());

        MessageWidget *messageWidget = new MessageWidget(fullMsg, Qt::darkRed , Qt::darkRed, this);

        appendMessage(messageWidget);

        updateNumberClientConnected( components.nClientConnected );
//        removeListUser(components.sender);
        userListWidget->removeItem(components.sender);
    }
}

void ChatRoom::appendMessage(MessageWidget *message)
{
    chatDisplayLayout->addWidget(message);
    chatDisplayContainer->updateGeometry();

    messageInput->clear();
    messageInput->setFocus();

    updateScrollBar();
}

void ChatRoom::extractMessage(const QString message , MessageComponents& components , bool extract_nClientConnected )
{
    components.colorSender = message.section('|' , 0 , 0);

    QString senderAndText = message.section('|', 1);


    components.sender = senderAndText.section(':',0,0);
    components.text = senderAndText.section(':',1);

    if (extract_nClientConnected )
    {
        components.text = senderAndText.section(':',1).section("||" , 0,0);
//            qDebug() << (message.section("||", 1)).remove(QChar('\"'));
        components.nClientConnected = message.section("||", 1).toInt();
    }
}

void ChatRoom::updateScrollBar()
{
    QTimer::singleShot(0, this, [=]() {
        scrollArea->verticalScrollBar()->setValue(scrollArea->verticalScrollBar()->maximum());
    });
}

void ChatRoom::updateNumberClientConnected( unsigned int nClient )
{
    QString labelText = "Connected Users: " + QString::number(nClient);
    connectedUsersLabel->setText(labelText);
}

void ChatRoom::handleUserListReceived(const QString &message) {
    qDebug() << message;
    QString messageParsed = message;
    messageParsed.remove("USERLIST");
    qDebug() << "Messaggio modificato" << messageParsed;

    QStringList userPairs = messageParsed.split('&');
    userPairs.removeAll("");

    qDebug() << userPairs;

    for (const QString &userPair: userPairs) {
        // Dividi ogni coppia usando il separatore '|'
        QString colorString = userPair.section('|', 0, 0);
        QString username = userPair.section('|', 1, 1);
//        appendListUser(username , colorString);
        userListWidget->addItem(username , colorString);
    }
}

void ChatRoom::searchUsers(const QString &text)
{
    for(int i = 0 ; i < userListWidget->count() ; ++i )
    {
        QListWidgetItem *item = userListWidget->item(i);
        QString username = item->data(Qt::DisplayRole).toString();

        if(username.startsWith(text, Qt::CaseInsensitive))
        {
            item->setHidden(false);
        }
        else
        {
            item->setHidden(true);
        }
    }
}

void ChatRoom::appendListUser(const QString &nickname, const QString &color)
{
//    QString coloredNickname = QString("<font color='%1'>%2</font>").arg(color , nickname);
//    userListWidget->addItem(QString("<font color='%1'>%2</font>").arg(color , nickname);
//    QString coloredNickname = QString("<font color='%1'>%2</font>").arg(color, nickname);
//
//    QTextBrowser *textBrowser = new QTextBrowser();
//    textBrowser->setHtml(coloredNickname);
//
//// Imposta alcune proprietà per adattare QTextBrowser a QListWidget
//    textBrowser->setFrameShape(QFrame::NoFrame);  // Rimuove il bordo
//    textBrowser->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);  // Disabilita la barra di scorrimento verticale
//    textBrowser->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);  // Disabilita la barra di scorrimento orizzontale
//
//    QListWidgetItem *item = new QListWidgetItem();
//    item->setSizeHint(textBrowser->sizeHint());  // Imposta le dimensioni dell'elemento sulla base delle dimensioni di QTextBrowser
//    userListWidget->addItem(item);
//    userListWidget->setItemWidget(item, textBrowser);

// Creare un nuovo QTextBrowser per ogni elemento
//    QString coloredNickname = QString("<font color='%1'>%2</font>").arg(color, nickname);
//    QTextBrowser *textBrowser = new QTextBrowser();
//    textBrowser->setHtml(coloredNickname);
//    textBrowser->setFrameShape(QFrame::NoFrame);
//    textBrowser->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
//    textBrowser->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
//
//// Impostare la larghezza desiderata per tutti i QTextBrowser
//    int desiredWidth = 100;  // Imposta la larghezza desiderata
//    textBrowser->setFixedWidth(desiredWidth);
//
//
//// Creare un nuovo QListWidgetItem
//    QListWidgetItem *item = new QListWidgetItem();
//    item->setSizeHint(QSize(desiredWidth, 20));
//
//// Aggiungere QTextBrowser come widget all'elemento
//    userListWidget->addItem(item);
//    userListWidget->setItemWidget(item, textBrowser);
//
//    QListWidgetItem *firstItem = userListWidget->item(0);
//    if (firstItem) {
//        QTextBrowser *textBrowser = qobject_cast<QTextBrowser*>(userListWidget->itemWidget(firstItem));
//        if (textBrowser) {
//            QString text = textBrowser->toPlainText(); // o textBrowser->toHtml() se il testo è in formato HTML
//            qDebug() << "Testo dell'elemento 0: " << text;
//        }
//    }
}

//void ChatRoom::removeListUser(const QString &nickname)
//{
//    // Cicla attraverso gli elementi nella lista
//    for (int i = 0; i < userListWidget->count(); ++i) {
//        QListWidgetItem *item = userListWidget->item(i);
//
//        // Ottieni il widget associato all'elemento
//        QTextBrowser *textBrowser = qobject_cast<QTextBrowser*>(userListWidget->itemWidget(item));
//
//        if (textBrowser && textBrowser->toPlainText() == nickname)
//        {
//            userListWidget->takeItem(i);
//
//            delete item;
//
//            break;
//        }
//    }
//}
