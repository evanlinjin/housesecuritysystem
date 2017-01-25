#include "networkmanager.h"

NetworkManager::NetworkManager(/*QObject *parent*/)
{
//    QNetworkAccessManager(parent);
}

//NetworkManager::~NetworkManager()
//{
//    QNetworkAccessManager::~QNetworkAccessManager();
//}

QNetworkReply* NetworkManager::post(const QNetworkRequest &request, const QByteArray &data)
{
    QNetworkReply* reply = QNetworkAccessManager::post(request, data);
    connect(reply, SIGNAL(error(QNetworkReply::NetworkError)), &loop, SLOT(quit()));
    connect(reply, SIGNAL(finished()), &loop, SLOT(quit()));
    connect(this, SIGNAL(abort()), reply, SLOT(abort()));
    loop.exec();

    return reply;
}
