//
// Created by ilcondor on 29/11/23.
//

#ifndef CHATROOM_CLIENTCONFIGDIALOG_H
#define CHATROOM_CLIENTCONFIGDIALOG_H

#include <QDialog>
#include <QLabel>
#include <QLineEdit>
#include <QProgressBar>
#include <QTimer>

#include "include/customlineedit.h"
#include "MyClient.h"

class ClientConfigDialog : public QDialog {
    Q_OBJECT

public:
    ClientConfigDialog(QWidget *parent = nullptr);

private:
    QLabel *titleLabel;
    QLabel *ipLabel;
    CustomLineEdit *ipEdit;
    QLabel *portLabel;
    CustomLineEdit *portEdit;
    QLabel *nickNameLabel;
    QLineEdit *nickNameEdit;
    QPushButton *connectButton;
    QTimer *progressTimer;
    QProgressBar *progressBar;
    int progressValue;
    MyClient *myClient;

private slots:
    void connectClicked();
    void updateProgress();
    void onConnectionEstablished();
    void validateAddress(const QString &ipAddress);
    void validatePort(const QString &port);

public:
    QString getServerAddress() const;
    quint16 getServerPort() const;
    QString getUserName() const;
};

#endif //CHATROOM_CLIENTCONFIGDIALOG_H
