#include "newusermanager.h"

NewUserManager::NewUserManager(QObject *parent) : QObject(parent)
{
    qDebug() << "OBJECT CREATED: NewUserManager";
}

NewUserManager::~NewUserManager()
{
    qDebug() << "OBJECT DELETED: NewUserManager";
}

NewUserManager* NewUserManager::linkUp(NetworkManager* nm, LoadingManager* lm)
{
    this->nm = nm;
    this->lm = lm;
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

    // Send Request.
    QJsonObject replyObj = nm->jsonPost(QUrl("https://telepool-144405.appspot.com/api/v1/create_user"), dataObj);

    // Get reply status.
    QString status = replyObj["status"].toString().trimmed();

    if (status == "SUCCESS" || status == "OKAY") {
        status = "Account successfully created. Please check your email "
                + email + " to enable it!";
    }
    emit createUserComplete(status);
    emit lm->loadingStop();
}
