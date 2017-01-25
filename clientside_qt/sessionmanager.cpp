#include "sessionmanager.h"

SessionManager::SessionManager(QString appStr, QObject *parent) : QObject(parent), appStr(appStr)
{
    nm = new NetworkManager();
    settings = new SettingsManager("Gooseberry", "House Security System", this);
}

SessionManager::~SessionManager()
{
    settings->deleteLater();
    nm->deleteLater();
}

QString SessionManager::getClientInfo()
{
    QString osName(QSysInfo::productType());
    QString osVersion(QSysInfo::productVersion());
    osName[0] = osName[0].toUpper();

    return QString("%1 on %2 %3").arg(appStr, osName, osVersion);
}

bool SessionManager::login(QString email, QString password)
{
    emit loadingStart("Logging in...");

    QJsonObject dataObj;
    dataObj["email"] = QJsonValue(email);
    dataObj["password"] = QJsonValue(password);
    dataObj["client"] = QJsonValue(getClientInfo());

    QJsonObject replyObj = nm->jsonPost(QUrl("https://telepool-144405.appspot.com/api/v1/login"), dataObj);

    // Get reply status.
    QString status = replyObj["status"].toString().trimmed();

    if (status == "SUCCESS" || status == "OKAY")
    {
        this->uid(replyObj["user_id"].toString());
        this->email(replyObj["email"].toString());
        this->sid(replyObj["session_id"].toString());
        this->skey(replyObj["session_key"].toString());
        this->client(replyObj["client"].toString());
        this->loginTime(replyObj["login_time"].toInt());
        this->lastSeenTime(replyObj["last_seen_time"].toInt());

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

    QJsonObject dataObj;
    dataObj["user_id"] = QJsonValue(uid());
    dataObj["session_id"] = QJsonValue(sid());
    dataObj["session_key"] = QJsonValue(skey());

    QJsonObject replyObj = nm->jsonPost(QUrl("https://telepool-144405.appspot.com/api/v1/logout"), dataObj);

    // Get reply status.
    QString status = replyObj["status"].toString().trimmed();
    qDebug() << "STATUS:" << status;

    if (status != "")
    {
        this->uid("");
        this->email("");
        this->sid("");
        this->skey("");
        this->client("");
        this->loginTime(0);
        this->lastSeenTime(0);

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

void SessionManager::abortAll()
{
    emit nm->abort();
    emit loadingStop();
}

SessionsModel* SessionManager::genSessionsModel(QObject *parent)
{
    SessionsModel* temp = new SessionsModel(parent);
    return temp->linkUp(nm, settings);
}
