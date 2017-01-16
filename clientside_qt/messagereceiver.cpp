#include "messagereceiver.h"

MessageReceiver::MessageReceiver(QObject *parent) : QObject(parent)
{
    // Setup Pubnub Channels.
    pn_channels = new QStringList();
    pn_channels->append("testCh");

    // Setup Pubnub Subscriber.
    pn_subscribe.reset(new pubnub_qt(Keys::pnPublish, Keys::pnSubscribe));
    connect(pn_subscribe.data(), SIGNAL(outcome(pubnub_res)),
            this, SLOT(onSubscribe(pubnub_res)));
    pn_subscribe->subscribe(*pn_channels);

}

void MessageReceiver::onSubscribe(pubnub_res result)
{
    // Print result.
    if (result != PNR_OK) {
        qDebug() << "[SUBSCRIBE FALIED] Result:" << pubnub_res_2_string(result);
    } else {
        QList<QString> msgs = pn_subscribe->get_all();
        for (int i = 0; i < msgs.size(); i++) {
            qDebug() << "[SUBSCRIBE OKAY  ] Result: " << msgs[i];
        }
    }

    // Resubscribe.
    result = pn_subscribe->subscribe(*pn_channels);
    if (result != PNR_STARTED) {
        qDebug() << "[SUBSCRIBE FALIED] Result:" << pubnub_res_2_string(result);
    }
}
