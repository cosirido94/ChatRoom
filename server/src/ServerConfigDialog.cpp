#include "../include/ServerConfigDialog.h"
#include "include/customlineedit.h"
#include <QLabel>
#include <QLineEdit>
#include <QPushButton>
#include <QVBoxLayout>
#include <QFormLayout>
#include <iostream>
#include <qdebug.h>
#include "../include/MyServer.h"

void lockInputAccess( CustomLineEdit* , CustomLineEdit* );
void unlockInputAccess( CustomLineEdit* , CustomLineEdit*);
void toggleStatus( bool * , QPushButton * , QLabel *);
ServerConfigDialog::ServerConfigDialog(QWidget *parent) : QDialog(parent)
{
    setWindowTitle("Server Settings");
    setFixedSize(400, 250);

    titleLabel = new QLabel("Server Configuration");
    titleLabel->setObjectName("titleLabel");

    ipLabel = new QLabel("Server IP Address:", this);
    ipLabel->setObjectName("ipLabel");

//    ipEdit = new QLineEdit(this);
//    ipEdit->setPlaceholderText("Enter IP Address");
//  ipEdit->setReadOnly(false);
//    QLabel* indicatorLabel = new QLabel;
//    indicatorLabel->setPixmap(QPixmap("img/cross-mark.png"));

    ipEdit = new CustomLineEdit(this);
    ipEdit->setPlaceholderText("Enter IP Address");

    portLabel = new QLabel("Port Number:", this);
    portLabel->setObjectName("portLabel");

/*    portEdit = new QLineEdit(this);
    portEdit->setPlaceholderText("Enter Port Number");*/
    //portEdit->setReadOnly(false);

    portEdit = new CustomLineEdit(this);
    portEdit->setPlaceholderText("Enter Port Number");

    serverStatusLabel = new QLabel("Server status");
    serverStatusLabel->setObjectName("serverStatusLabel");

    statusIndicator = new QLabel;
    statusIndicator->setFixedSize(16, 16);  // Set the size of the indicator
    statusIndicator->setObjectName("statusIndicator");
    statusIndicator->setStyleSheet("QLabel#statusIndicator { background-color: red; border-radius: 8px; }");

    startServerButton = new QPushButton("Start Server", this);
    startServerButton->setObjectName("serverButton");
//    startServerButton->setCheckable(true); /* serve per il toggle dello stile */
    startServerButton->setFixedSize(250,30);

    /* Collego il click del bottone all'avvio o a fermare il server */

    connect(startServerButton, &QPushButton::clicked, this, &ServerConfigDialog::toggleServer);
//    connect(ipEdit, &CustomLineEdit::textChanged, this, &ServerConfigDialog::validateAddress);
/*    connect(ipEdit, &CustomLineEdit::textChanged, this, [this] (const QString &text)
    {
        validateAddress(text, this->ipEdit);
    });*/
    connect(ipEdit, SIGNAL(textChanged(const QString &)), this, SLOT(validateAddress(const QString &)));

    /*   if (QObject::connect(ipEdit, SIGNAL(textChanged(const QString &)), this, SLOT(validateAddress(const QString &)))) {
           // La connessione è stata stabilita correttamente.
           qDebug() << "La connessione è stata stabilita correttamente.";
       } else {
           // La connessione non è stata stabilita correttamente.
           qDebug() << "Errore nella connessione.";
       }*/

    connect(portEdit, SIGNAL(textChanged(const QString &)), this, SLOT(validatePort(const QString &)));

    /******** Layout *******/

    /* Layout della form */

/*    QWidget* customInputWidget = new QWidget;
    QHBoxLayout* customInputLayout = new QHBoxLayout(customInputWidget);
    customInputLayout->addWidget(ipEdit);
    customInputLayout->addWidget(indicatorLabel);*/

    QHBoxLayout *layout = new QHBoxLayout;
    layout->addWidget(ipEdit);

    QHBoxLayout *layout2 = new QHBoxLayout;
    layout2->addWidget(portEdit);

//    layout->insertWidget(layout->count() - 1, ipEdit->indicatorLabel);
    QFormLayout *formLayout = new QFormLayout;
    formLayout->addRow(ipLabel, layout);
    formLayout->addRow(portLabel, portEdit);
    formLayout->addRow(serverStatusLabel , statusIndicator);

    /* Layout per il bottone (un container che lo contiene e poi si centra da solo */

    QHBoxLayout *buttonLayout = new QHBoxLayout;
    buttonLayout->addWidget(startServerButton);
    buttonLayout->setObjectName("container");

    /* Creo l'intero layout dell'interfaccio creando un mainLayout a cui aggiungo tutti gli widget */


    QVBoxLayout *mainLayout = new QVBoxLayout;
    mainLayout->addWidget(titleLabel);
    mainLayout->addLayout(formLayout);
    mainLayout->addLayout(buttonLayout);
    setLayout(mainLayout);
}

void ServerConfigDialog::toggleServer()
{
    if ( ipEdit->getCheckMark() && portEdit->getCheckMark() )
    {
        if(isServerRunning)
        {
            startServerButton->setStyleSheet("background-color: green;");
            lockInputAccess(ipEdit,portEdit);

            /*    startServerButton->setText("Start Server");
                statusIndicator->setStyleSheet("QLabel#statusIndicator { background-color: red; border-radius: 8px; }");
                isServerRunning = false;*/
            toggleStatus(&isServerRunning , startServerButton, statusIndicator );

            delete myServer;
            myServer = nullptr;
        }
        else
        {
            /*ipEdit->setReadOnly(true);
            portEdit->setReadOnly(true);*/
            startServerButton->setStyleSheet("background-color: red ;");
            unlockInputAccess( ipEdit , portEdit );

            /* startServerButton->setStyleSheet(redButtonStyle); */

//        startServerButton->setText("Stop Server");
            QString ip = ipEdit->text();
            QString port = portEdit->text();

            myServer = new MyServer(ip,port.toUShort());

            /* serverStatusLabel->setText("Server " + ip +" :" +port ); */

            /* serverStatusLabel->setStyleSheet(greenLabelStyle); */
            /*statusIndicator->setStyleSheet("QLabel#statusIndicator { background-color: green; border-radius: 8px; }");
            isServerRunning = true;*/

            toggleStatus(&isServerRunning , startServerButton, statusIndicator );
        }
    }
}

void ServerConfigDialog::validateAddress(const QString &ipAddress)
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

void ServerConfigDialog::validatePort(const QString &port)
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

void toggleStatus( bool *isRunning, QPushButton *startServerButton, QLabel * statusIndicator)
{
    if(*isRunning)
    {
        startServerButton->setText("Start Server");
        statusIndicator->setStyleSheet("QLabel#statusIndicator { background-color: red; border-radius: 8px; }");
        *isRunning = false;
    }
    else
    {
        startServerButton->setText("Stop Server");
        statusIndicator->setStyleSheet("QLabel#statusIndicator { background-color: green; border-radius: 8px; }");
        *isRunning = true;
    }
}


