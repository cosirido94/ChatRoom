#include "../include/sortedlistwidget.h"
#include <QTextBrowser>
#include <QVBoxLayout>

SortedListWidget::SortedListWidget(QWidget *parent) : QListWidget(parent)
{
    this->setSortingEnabled(true);
//    this->sortItems(Qt::AscendingOrder);
    sortList();
}

void SortedListWidget::addItem(const QString &nickname, const QString &color)
{
    QString coloredNickname = QString("<font color='%1'>%2</font>").arg(color, nickname);
    QTextBrowser *textBrowser = new QTextBrowser();
    textBrowser->setHtml(coloredNickname);

    textBrowser->setFrameShape(QFrame::NoFrame);
    textBrowser->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
    textBrowser->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);

    QListWidgetItem *item = new QListWidgetItem();
    item->setSizeHint(QSize(100, 20));

    this->QListWidget::addItem(item);
    this->setItemWidget(item, textBrowser);
    this->sortItems(Qt::AscendingOrder);

    item->setData(Qt::DisplayRole, nickname);

    sortList();
}

void SortedListWidget::removeItem(const QString &nickname)
{
    for (int i = 0; i < this->count(); ++i)
    {
        QListWidgetItem *item = this->item(i);

        QTextBrowser *textBrowser = qobject_cast<QTextBrowser *>(this->itemWidget(item));

        if (textBrowser && textBrowser->toPlainText() == nickname)
        {
            this->takeItem(i);

            delete item;
            break;
        }
    }
    sortList();
}

void SortedListWidget::sortList()
{
    this->sortItems(Qt::AscendingOrder);
}

//void SortedListWidget::removeItem(const QString &nickname)
//{
//    for (int i = 0; i < this->count(); ++i)
//    {
//        QListWidgetItem *item = this->item(i);
//        if (item->data(Qt::DisplayRole).toString() == nickname)
//        {
//            this->takeItem(i);
//            delete item;
//            break;
//        }
//    }
//}

