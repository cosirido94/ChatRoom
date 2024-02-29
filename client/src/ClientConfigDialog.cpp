#include "../include/ClientConfigDialog.h"
#include "include/customlineedit.h"
#include <QLabel>
#include <QPushButton>
#include <QVBoxLayout>
#include <QFormLayout>
#include <QTimer>
#include <iostream>
#include <QMessageBox>

#include <qdebug.h>
#include "../include/MyClient.h"
#include "../chatroom/include/ChatManager.h"


void lockInputAccess( CustomLineEdit* , CustomLineEdit* );
void unlockInputAccess( CustomLineEdit* , CustomLineEdit*);

ClientConfigDialog::ClientConfigDialog(QWidget *parent) : QDialog(parent)
{
    setWindowTitle("Client Settings");
    setFixedSize(400,275);

    titleLabel = new QLabel("Client Configuration");
    titleLabel->setObjectName("titleLabel");

    ipLabel = new QLabel("Server IP Address:" ,this);
    ipLabel->setObjectName("ipLabel");

    ipEdit = new CustomLineEdit(this);
    ipEdit->setPlaceholderText("Enter IP Address");

    portLabel = new QLabel("Port Number:",this);
    portLabel->setObjectName("portLabel");

    portEdit = new CustomLineEdit(this);
    portEdit->setPlaceholderText("Enter Port Number");

    nickNameLabel = new QLabel("Nickname");
    nickNameLabel->setObjectName("nickNameLabel");

    nickNameEdit = new QLineEdit(this);
    nickNameEdit->setPlaceholderText("Enter Nickname");

    connectButton = new QPushButton("Connect", this);
    connectButton->setObjectName("connectButton");
    connectButton->setFixedSize(250,30);

    progressBar = new QProgressBar(this);  // Aggiungi un nuovo indicatore di progresso
    progressTimer = new QTimer(this);      // Crea un timer

    // Configura l'indicatore di progresso
    progressBar->setRange(0, 100);
    progressBar->setValue(0);
    progressBar->setTextVisible(true);
    progressBar->setVisible(false);


    /* Collegamento click del bottone al alla connect del server
     *
     * */

    connect(ipEdit, SIGNAL(textChanged(const QString &)), this, SLOT(validateAddress(const QString &)));

    connect(portEdit, SIGNAL(textChanged(const QString &)), this, SLOT(validatePort(const QString &)));

    connect(connectButton , &QPushButton::clicked , this , &ClientConfigDialog::connectClicked );
    connect(progressTimer, &QTimer::timeout, this, &ClientConfigDialog::updateProgress);

    /******** Layout *******/

    QFormLayout *formLayout = new QFormLayout;
    formLayout->addRow(ipLabel,ipEdit);
    formLayout->addRow(portLabel,portEdit);
    formLayout->addRow(nickNameLabel,nickNameEdit);

    QHBoxLayout *buttonLayout = new QHBoxLayout;
    buttonLayout->addWidget(connectButton);
    buttonLayout->setObjectName("container");

    QVBoxLayout *mainLayout = new QVBoxLayout;
    mainLayout->addWidget(titleLabel);
    mainLayout->addLayout(formLayout);
    mainLayout->addLayout(buttonLayout);
    mainLayout->addWidget(progressBar);  // Aggiungi l'indicatore di progresso

    setLayout(mainLayout);

}

void ClientConfigDialog::validateAddress(const QString &ipAddress)
{
//    qDebug() << "Validating address: " << ipAddress;
    QRegExp ipRegex("^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$");
    bool isValid = ipRegex.exactMatch(ipAddress);

    ipEdit->getIndicatorLabel();

    if(isValid)
    {
        ipEdit->getIndicatorLabel()->setPixmap(QPixmap("img/check-mark"));
        ipEdit->setCheckMark(true);
    }
    else
    {
        ipEdit->getIndicatorLabel()->setPixmap(QPixmap("img/cross-mark"));
        ipEdit->setCheckMark(false);
    }
}

void ClientConfigDialog::validatePort(const QString &port)
{
//    qDebug() << "Validating address: " << port;
    QRegExp portRegex("^([1-9]\\d{0,3}|[1-5]\\d{4}|6[0-5][0-5][0-3][0-5])$");
    bool isValid = portRegex.exactMatch(port);

    portEdit->getIndicatorLabel();

    if(isValid)
    {
        portEdit->getIndicatorLabel()->setPixmap(QPixmap("img/check-mark"));
        portEdit->setCheckMark(true);
    }
    else
    {
        portEdit->getIndicatorLabel()->setPixmap(QPixmap("img/cross-mark"));
        portEdit->setCheckMark(false);
    }
}

void lockInputAccess( CustomLineEdit *ipEdit , CustomLineEdit *portEdit )
{
    ipEdit->setReadOnly(false);
    portEdit->setReadOnly(false);
}

void unlockInputAccess( CustomLineEdit *ipEdit , CustomLineEdit *portEdit )
{
    ipEdit->setReadOnly(true);
    portEdit->setReadOnly(true);
}

QString ClientConfigDialog::getServerAddress() const
{
    return ipEdit->text();
}

quint16 ClientConfigDialog::getServerPort() const
{
    return portEdit->text().toUShort();
}

QString ClientConfigDialog::getUserName() const
{
    return nickNameEdit->text();
}

void ClientConfigDialog::connectClicked()
{
    /* */
    if ( ipEdit->getCheckMark() && portEdit->getCheckMark() && getUserName() != "" )
    {

        // Nascondi il pulsante di connessione e mostra l'indicatore di progresso
        connectButton->setVisible(false);

        progressBar->setVisible(true);

        // Avvia il timer per simulare l'animazione dell'indicatore di progresso
        progressValue = 0;
        progressTimer->start(75);  // Aggiorna ogni 50 millisecondi

    }
    else if ( getUserName() != "")
    {
        QMessageBox::critical(this, "Error", "Incorrect IP address or port");
    }
    else
    {
        QMessageBox::critical(this, "Error", "Nickname missing");
    }
}

void ClientConfigDialog::updateProgress()
{
    // Simula un progresso fino a 100
    progressValue += 5;
    if (progressValue > 100) {
        progressTimer->stop();
//        accept();
        myClient = new MyClient(this);
        myClient->setMyClient(getUserName());
        connect(myClient, &MyClient::connectionEstablished, this, &ClientConfigDialog::onConnectionEstablished);

        myClient->connectToServer(getServerAddress() , getServerPort() );

    }
    else
    {
        progressBar->setValue(progressValue);
        progressBar->setFormat("Please wait, connecting to %1:%2... %p%");
        progressBar->setFormat(progressBar->format().arg(getServerAddress()).arg(QString::number(getServerPort())));
    }
}

void ClientConfigDialog::onConnectionEstablished()
{
    this->close();
//    ChatManager::getInstance().getChatRoom()->show();
}