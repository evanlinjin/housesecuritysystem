#include "sessionmanager.h"

SessionManager::SessionManager(QObject *parent) : QObject(parent)
{
    nm = new QNetworkAccessManager(this);
    settings = new QSettings("Gooseberry", "House Security System", this);
}

SessionManager::~SessionManager()
{
    settings->deleteLater();
}

bool SessionManager::login(QString email, QString password)
{
    // Prepare network request.
    QNetworkRequest request;
    request.setUrl(QUrl("https://telepool-144405.appspot.com/api/v1/login"));
    request.setRawHeader("Content-Type", "application/json");

    QJsonObject dataObj;
    dataObj["email"] = QJsonValue(email);
    dataObj["password"] = QJsonValue(password);

    // Send request.
    QNetworkReply* reply = nm->post(request, QJsonDocument(dataObj).toJson());

    // Wait for Network Reply.
    QEventLoop loop;
    connect(reply, SIGNAL(finished()), &loop, SLOT(quit()));
    loop.exec();

    // Read network reply.
    QJsonObject replyObj = QJsonDocument::fromJson(reply->readAll()).object();
    reply->deleteLater();

    // Get reply status.
    QString status = replyObj["status"].toString().trimmed();

    if (status == "SUCCESS" || status == "OKAY")
    {
        setUid(replyObj["user_id"].toString());
        setEmail(replyObj["email"].toString());
        setSid(replyObj["session_id"].toString());
        setSkey(replyObj["session_key"].toString());
        setLoginTime(replyObj["login_time"].toInt());
        setLastSeenTime(replyObj["last_seen_time"].toInt());

        return true;
    }

    return false;
}

bool SessionManager::isLoggedIn() {
    return (uid() != "" && sid() != "");
}
