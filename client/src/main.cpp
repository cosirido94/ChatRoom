#include <QApplication>
#include "../include/MyClient.h"
#include "../include/ClientConfigDialog.h"
//#include <QThread>
#include <QMetaType>
#include <QFile>

#include <iostream>

int main(int argc, char *argv[])
{
    qRegisterMetaType<QAbstractSocket::SocketState>("QAbstractSocket::SocketState");
    QApplication app(argc, argv);
//    MyClient myClient;
//    myClient.connectToServer("127.0.0.1", 8081);

    QFile styleFile("css/server/style.css");
    /* qDebug() << "Current directory: " << QDir::currentPath();*/

    if (styleFile.open(QFile::ReadOnly | QFile::Text))
    {
        QTextStream stream(&styleFile);
        QString styleSheet = stream.readAll();

        app.setStyleSheet(styleSheet);

        ClientConfigDialog dialog;
        dialog.show();

        return app.exec();
    }
    else
    {
        qDebug() << "Errore nell'apertura del file CSS: " << styleFile.errorString();
        return -1;
    }
}