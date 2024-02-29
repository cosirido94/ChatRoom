#include "../chatroom/include/MessageWidget.h"

MessageWidget::MessageWidget(const Message& message, const QColor& userColor ,const QColor& textColor,QWidget* parent)
        : QFrame(parent)
{
    setupUI();

    // Imposta i dati del messaggio
    senderLabel->setText(message.getSender());
    timestampLabel->setText(message.getTimestamp().toString("hh:mm:ss"));
    textLabel->setText(message.getText());

    QString styledSender = QString(
            "<font color='%1'>%2</font>"
    ).arg(userColor.name(), message.getSender());


    senderLabel->setText(styledSender);

    if (message.getSender() == "SERVER")
    {
        QString styleText = QString(
                "<font color='%1'>%2</font>"
        ).arg(textColor.name() , message.getText() );

        textLabel->setText(styleText);
    }
    QString styleText = QString(
            "<font color='%1'>%2</font>"
            ).arg(textColor.name() , message.getText() );

    textLabel->setText(styleText);
    QString styleSheet = QString(
            "QWidget#messageWidget {"
            "   background-color: white;"
            "   border-radius: 10px;"
            "}"
    );

    setStyleSheet(styleSheet);

    setObjectName("messageWidget");
}

void MessageWidget::setupUI()
{
    QVBoxLayout* mainLayout = new QVBoxLayout(this);

    // Parte superiore del messaggio: mittente e timestamp
    QHBoxLayout* topLayout = new QHBoxLayout();
    senderLabel = new QLabel(this);
    timestampLabel = new QLabel(this);
    topLayout->addWidget(senderLabel);
    topLayout->addStretch();  // Aggiunge spazio elastico per spostare il timestamp a destra
    topLayout->addWidget(timestampLabel);

    // Parte inferiore del messaggio: testo
    textLabel = new QLabel(this);

    // Aggiungi le parti superiori e inferiori al layout principale
    mainLayout->addLayout(topLayout);
    mainLayout->addWidget(textLabel);

    setLayout(mainLayout);
}
