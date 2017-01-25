#ifndef NETWORKMANAGER_H
#define NETWORKMANAGER_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QEventLoop>
#include <QUrl>
#include <QJsonObject>
#include <QJsonDocument>

class NetworkManager : public QNetworkAccessManager
{
    Q_OBJECT
public:
    explicit NetworkManager();

    QNetworkReply* post(const QNetworkRequest &request, const QByteArray &data);
    QJsonObject jsonPost(const QUrl &url, const QJsonObject &requestObj);

private:
    QEventLoop loop;

signals:
    void abort();

};

#endif // NETWORKMANAGER_H
