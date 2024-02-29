#include <QApplication>
#include "../include/ServerConfigDialog.h"
#include <QFile>
#include <QTextStream>
#include <QDebug> // Per la gestione degli errori
int main(int argc, char *argv[]) {
    /* qputenv("QT_DEBUG_PLUGINS", QByteArray("1")); */

    QApplication app(argc, argv);


    /* QFile styleFile("/home/ilcondor/Documenti/CLionProjects/Test-Project-21-22/ChatRoom/css/server/style.css"); */
    QFile styleFile("css/server/style.css");
    /* qDebug() << "Current directory: " << QDir::currentPath();*/

    if (styleFile.open(QFile::ReadOnly | QFile::Text)) {
        QTextStream stream(&styleFile);
        QString styleSheet = stream.readAll();

        app.setStyleSheet(styleSheet);

        // Creare e visualizzare il tuo ServerConfigDialog o altre finestre
        ServerConfigDialog dialog;
        dialog.show();

        return app.exec();
    }
    else
    {
        qDebug() << "Errore nell'apertura del file CSS: " << styleFile.errorString();
        return -1;
    }
}
