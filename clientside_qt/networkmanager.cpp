#include "networkmanager.h"

NetworkManager::NetworkManager(QObject *parent) : QNetworkAccessManager(parent)
{

}

QNetworkReply* NetworkManager::post(const QNetworkRequest &request, const QByteArray &data)
{
    QNetworkReply* reply = QNetworkAccessManager::post(request, data);
    connect(reply, SIGNAL(error(QNetworkReply::NetworkError)), &loop, SLOT(quit()));
    connect(reply, SIGNAL(finished()), &loop, SLOT(quit()));
    connect(this, SIGNAL(abort()), reply, SLOT(abort()));
    loop.exec();

    return reply;
}

QJsonObject NetworkManager::jsonPost(const QUrl &url, const QJsonObject &requestObj)
{
    QNetworkRequest request;
    request.setUrl(url);
    request.setRawHeader("Content-Type", "application/json");

    // Send request.
    QNetworkReply* reply = post(request, QJsonDocument(requestObj).toJson());

    // Read network reply.
    QJsonObject replyObj = QJsonDocument::fromJson(reply->readAll()).object();
    reply->deleteLater();

    return replyObj;
}
