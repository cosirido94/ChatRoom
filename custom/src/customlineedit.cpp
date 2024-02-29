#include "include/customlineedit.h"
#include <iostream>
CustomLineEdit::CustomLineEdit(QWidget *parent) : QLineEdit(parent)
{
    indicatorLabel = new QLabel(this);
    indicatorLabel->setScaledContents(true);
    indicatorLabel->setFixedSize(18,18);
//    indicatorLabel->setPixmap(QPixmap("img/check-mark.png"));
    adjustIndicatorPosition();
//    connect(this, &QLineEdit::textChanged , this , &CustomLineEdit::validateAddress);
    checkMark = false;
}

QLabel* CustomLineEdit::getIndicatorLabel() const
{
    return indicatorLabel;
}

bool CustomLineEdit::getCheckMark()
{
    return checkMark;
}


void CustomLineEdit::setInputValid(bool valid)
{
    if(valid)
    {
        indicatorLabel->setPixmap(QPixmap("img/check-mark"));
    }
    else
    {
        indicatorLabel->setPixmap(QPixmap("img/cross-mark"));
    }
}

void CustomLineEdit::setCheckMark(bool x)
{
    checkMark = x;
}
void CustomLineEdit::adjustIndicatorPosition()
{
    indicatorLabel->move(this->width() - indicatorLabel->width() -5, (this->height() - indicatorLabel->height()) / 2);
}

void CustomLineEdit::paintEvent(QPaintEvent* event )
{
    QLineEdit::paintEvent(event);
}

void CustomLineEdit::resizeEvent(QResizeEvent* event) {
    QLineEdit::resizeEvent(event); // Chiamata al resizeEvent della classe base
    adjustIndicatorPosition(); // Aggiorna la posizione dell'indicatore
}
/*
void CustomLineEdit::validateAddress()
{
    QRegExp ipRegex("^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$");
    bool isValid = ipRegex.exactMatch(this->text());

    setInputValid(isValid);
}
void CustomLineEdit::validatePort()
{
    QRegExp portRegex("^([1-9]\\d{0,3}|[1-5]\\d{4}|6[0-5][0-5][0-3][0-5])$");
    bool isValid = portRegex.exactMatch(this->text());
    setInputValid(isValid);
}*/
void CustomLineEdit::textChanged(const QString &text)
{
    emit textChanged(text);
}