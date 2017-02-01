#include "newusermanager.h"

NewUserManager::NewUserManager(QObject *parent) : QObject(parent)
{
    qDebug() << "OBJECT CREATED: NewUserManager";
}

NewUserManager::~NewUserManager()
{
    qDebug() << "OBJECT DELETED: NewUserManager";
}

NewUserManager* NewUserManager::linkUp(NetworkManager* nm, SessionManager* sm, LoadingManager* lm)
{
    this->nm = nm;
    this->sm = sm;
    this->lm = lm;
    return this;
}

bool NewUserManager::testUsernameEmail(QString username) {
    QRegExp mailREX("\\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b");
    mailREX.setCaseSensitivity(Qt::CaseInsensitive);
    mailREX.setPatternSyntax(QRegExp::RegExp);
    return mailREX.exactMatch(username);
}

bool NewUserManager::testUsernameUnique(QString username) {
    return (username != "");
}

void NewUserManager::createUser(QString email, QString password)
{
    emit lm->loadingStart("Creating new account...", false);

    QJsonObject dataObj;
    dataObj["email"] = QJsonValue(email);
    dataObj["password"] = QJsonValue(password);

    QJsonObject replyObj = nm->jsonPost(QUrl("https://telepool-144405.appspot.com/api/v1/create_user"), dataObj);

    QString status = replyObj["status"].toString().trimmed();

    if (status == "SUCCESS" || status == "OKAY") {
        status = "Account successfully created. Please check your email "
                + email + " to enable it!";
    }
    emit createUserComplete(status);
    emit lm->loadingStop();
}

void NewUserManager::changePassword(QString currentPw, QString newPw)
{
    emit lm->loadingStart("Processing request...", false);

    QJsonObject dataObj;
    dataObj["user_id"] = QJsonValue(sm->uid());
    dataObj["session_id"] = QJsonValue(sm->sid());
    dataObj["session_key"] = QJsonValue(sm->skey());
    dataObj["email"] = QJsonValue(sm->email());
    dataObj["current_password"] = QJsonValue(currentPw);
    dataObj["new_password"] = QJsonValue(newPw);

    QJsonObject replyObj = nm->jsonPost(QUrl("https://telepool-144405.appspot.com/api/v1/change_user_password"), dataObj);

    QString status = replyObj["status"].toString().trimmed();

    if (status == "SUCCESS" || status == "OKAY") {
        status = "Password successfully changed.";
    }
    emit passwordChangeComplete(status);
    emit lm->loadingStop();
}
