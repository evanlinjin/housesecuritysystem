#ifndef NETWORKMANAGER_H
#define NETWORKMANAGER_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QEventLoop>

class NetworkManager : public QNetworkAccessManager
{
    Q_OBJECT
public:
    explicit NetworkManager();
//    ~NetworkManager();

    QNetworkReply* post(const QNetworkRequest &request, const QByteArray &data);

private:
    QEventLoop loop;

signals:
    void abort();

};

#endif // NETWORKMANAGER_H
