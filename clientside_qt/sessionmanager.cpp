#include "sessionmanager.h"

SessionManager::SessionManager(QObject *parent) : QObject(parent)
{

}

SessionManager* SessionManager::linkUp(SettingsManager* sm, NetworkManager* nm, LoadingManager *lm)
{
    this->sm = sm;
    this->nm = nm;
    this->lm = lm;
    return this;
}

// Read "isLoggedIn".
bool SessionManager::isLoggedIn() const
{
    return (uid() != "" && sid() != "");
}

QString SessionManager::getClientInfo()
{
    QString osName(QSysInfo::productType());
    QString osVersion(QSysInfo::productVersion());
    osName[0] = osName[0].toUpper();

    return QString("%1 on %2 %3").arg("Qt Android App", osName, osVersion);
}

void SessionManager::login(QString email, QString password)
{
    lm->loadingStart("Logging in...", false);

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

    }

    emit isLoggedInChanged();
    lm->loadingStop();
}

void SessionManager::logout()
{
    if (this->isLoggedIn() == false) { return; }
    lm->loadingStart("Logging out...", false);

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
    }

    emit isLoggedInChanged();
    lm->loadingStop();
}
