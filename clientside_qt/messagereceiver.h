#ifndef MESSAGERECEIVER_H
#define MESSAGERECEIVER_H

#include "pubnub_qt.h"

#include <QObject>

class MessageReceiver : public QObject
{
    Q_OBJECT
public:
    explicit MessageReceiver(QString pubKey, QString subKey, QObject *parent = 0);

private:
    QScopedPointer<pubnub_qt> pn_subscribe;
    QStringList* pn_channels;

signals:

public slots:

private slots:
    void onSubscribe(pubnub_res result);
};

#endif // MESSAGERECEIVER_H
