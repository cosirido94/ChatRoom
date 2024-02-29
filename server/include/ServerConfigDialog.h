#ifndef SERVERCONFIGDIALOG_H
#define SERVERCONFIGDIALOG_H

#include <QDialog>
#include <QLabel>
#include <QLineEdit>
#include "include/customlineedit.h"
#include "MyServer.h"

class ServerConfigDialog : public QDialog {
Q_OBJECT

public:
    ServerConfigDialog(QWidget *parent = nullptr);


private:
    QLabel *ipLabel;
    CustomLineEdit *ipEdit;
    QLabel *portLabel;
    CustomLineEdit *portEdit;
    QPushButton *startServerButton;
    QLabel *titleLabel;
    QLabel *serverStatusLabel;
    QLabel *statusIndicator;
    MyServer *myServer;
    bool isServerRunning = false;

private slots:
    void toggleServer();
    /*void validateAddress(const QString &ipAddress, CustomLineEdit* );*/
    void validateAddress(const QString &ipAddress);
    void validatePort(const QString &port);
};


#endif // SERVERCONFIGDIALOG_H
