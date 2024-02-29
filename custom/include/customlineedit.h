//
// Created by ilcondor on 19/10/23.
//

#ifndef CHATROOM_CUSTOMLINEEDIT_H
#define CHATROOM_CUSTOMLINEEDIT_H

#include <QLineEdit>
#include <QLabel>
#include <QPixmap>

class CustomLineEdit : public QLineEdit {
Q_OBJECT

public:
    CustomLineEdit(QWidget *parent = nullptr);
    QLabel *getIndicatorLabel() const;
    bool getCheckMark();
    void setCheckMark(bool);


protected:
    void paintEvent(QPaintEvent *event) override;
    void resizeEvent(QResizeEvent *event) override;

private:
    QLabel *indicatorLabel;
    bool checkMark;

public slots:

    void setInputValid(bool valid);
    void textChanged(const QString &text);
    void adjustIndicatorPosition();

    /*void validateAddress();
    void validatePort();*/

signals:

    /*void textChanged(const QString &text);*/

    // void textChangedWithPointer(const QString &text, CustomLineEdit *sender);
};

#endif //CHATROOM_CUSTOMLINEEDIT_H
