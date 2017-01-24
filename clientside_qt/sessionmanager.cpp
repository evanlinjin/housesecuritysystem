#include "sessionmanager.h"

SessionManager::SessionManager(QObject *parent) : QObject(parent)
{
    nm = new QNetworkAccessManager(this);
    settings = new QSettings("Gooseberry", "House Security System", this);

    appName = "Gooseberry Homeseed Qt Client";
    appVersion = "0.1";
}

SessionManager::~SessionManager()
{
    settings->deleteLater();
    nm->deleteLater();
}

bool SessionManager::login(QString email, QString password)
{
    emit loadingStart("Logging in...");
    // Prepare network request.
    QNetworkRequest request;
    request.setUrl(QUrl("https://telepool-144405.appspot.com/api/v1/login"));
    request.setRawHeader("Content-Type", "application/json");

    QJsonObject dataSessionObj;
    dataSessionObj["app_name"] = QJsonValue(appName);
    dataSessionObj["app_version"] = QJsonValue(appVersion);
    dataSessionObj["os_name"] = QJsonValue(QString("%1 %2").arg(QSysInfo::productType(), QSysInfo::kernelType()));
    dataSessionObj["os_version"] =  QJsonValue(QSysInfo::productVersion());

    QJsonObject dataObj;
    dataObj["email"] = QJsonValue(email);
    dataObj["password"] = QJsonValue(password);
    dataObj["client"] = dataSessionObj;

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

        emit loggedIn();
        emit loadingStop();
        return true;
    }

    emit loadingStop();
    return false;
}

bool SessionManager::logout()
{
    emit loadingStart("Logging out...");
    if (this->isLoggedIn() == false) {
        emit loggedOut();
        emit loadingStop();
        return true;
    }

    // Prepare network request.
    QNetworkRequest request;
    request.setUrl(QUrl("https://telepool-144405.appspot.com/api/v1/logout"));
    request.setRawHeader("Content-Type", "application/json");

    QJsonObject dataObj;
    dataObj["user_id"] = QJsonValue(uid());
    dataObj["session_id"] = QJsonValue(sid());
    dataObj["session_key"] = QJsonValue(skey());

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
    qDebug() << "STATUS:" << status;

    if (status != "")
    {
        setUid("");
        setEmail("");
        setSid("");
        setSkey("");
        setLoginTime(0);
        setLastSeenTime(0);

        emit loggedOut();
        emit loadingStop();
        return true;
    }

    emit loadingStop();
    return false;
}

bool SessionManager::isLoggedIn()
{
    return (uid() != "" && sid() != "");
}

SessionsModel* SessionManager::genSessionsModel(QObject *parent)
{
    SessionsModel* temp = new SessionsModel(parent);
    temp->linkUp(nm, settings);
    return temp;
}
