#ifndef MESSAGERECEIVER_H
#define MESSAGERECEIVER_H

#include <QObject>

class MessageReceiver : public QObject
{
    Q_OBJECT
public:
    explicit MessageReceiver(QObject *parent = 0);

signals:

public slots:
};

#endif // MESSAGERECEIVER_H