#include "newusermanager.h"

NewUserManager::NewUserManager(QObject *parent) : QObject(parent)
{
    nm = new QNetworkAccessManager(this);
}

bool NewUserManager::testUsernameEmail(QString username) {
    QRegExp mailREX("\\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b");
    mailREX.setCaseSensitivity(Qt::CaseInsensitive);
    mailREX.setPatternSyntax(QRegExp::RegExp);
    return mailREX.exactMatch(username);
}

bool NewUserManager::testUsernameUnique(QString username) {
    QNetworkRequest request;
    request.setUrl(QUrl("https://telepool-144405.appspot.com/api/v0/test_un_uniq"));
    request.setRawHeader("Content-Type", "application/json");

    return true;
}

void NewUserManager::createUser(QString email, QString password) {
    QNetworkRequest request;
    request.setUrl(QUrl("https://telepool-144405.appspot.com/api/v1/create_user"));
    request.setRawHeader("Content-Type", "application/json");

    QJsonObject dataObj;
    dataObj["email"] = QJsonValue(email);
    dataObj["password"] = QJsonValue(password);

    connect(nm, SIGNAL(finished(QNetworkReply*)), this, SLOT(createUserComplete(QNetworkReply*)));
    nm->post(request, QJsonDocument(dataObj).toJson());
}

void NewUserManager::createUserComplete(QNetworkReply* reply) {
    disconnect(nm, SIGNAL(finished(QNetworkReply*)), this, SLOT(createUserComplete(QNetworkReply*)));

    QJsonObject replyObj = QJsonDocument::fromJson(reply->readAll()).object();
    QString status = replyObj["status"].toString().trimmed();
    QString email = replyObj["email"].toString();

    if (status == "SUCCESS" || status == "OKAY") {
        QString msg = "Account successfully created. Please check your email "
                + email + " to enable it!";
        emit createUserComplete(true, msg);
    } else {
        emit createUserComplete(false, status);
    }
}
