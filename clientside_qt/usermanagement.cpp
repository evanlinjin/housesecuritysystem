#include "usermanagement.h"

UserManagement::UserManagement(QObject *parent) : QObject(parent)
{
    nm = new QNetworkAccessManager(this);
}

bool UserManagement::testUsernameEmail(QString username) {
    QRegExp mailREX("\\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b");
    mailREX.setCaseSensitivity(Qt::CaseInsensitive);
    mailREX.setPatternSyntax(QRegExp::RegExp);
    return mailREX.exactMatch(username);
}

bool UserManagement::testUsernameUnique(QString username) {
    QNetworkRequest request;
    request.setUrl(QUrl("https://telepool-144405.appspot.com/api/v0/test_un_uniq"));
    request.setRawHeader("Content-Type", "application/json");


    return true;
}

void UserManagement::createUser(QString username, QString password, QString superAccessToken) {
    QNetworkRequest request;
    request.setUrl(QUrl("https://telepool-144405.appspot.com/api/v0/create_user"));
    request.setRawHeader("Content-Type", "application/json");

    QJsonObject dataObj;
    dataObj["username"] = QJsonValue(username);
    dataObj["password"] = QJsonValue(password);
    dataObj["super_access_token"] = QJsonValue(superAccessToken);

    connect(nm, SIGNAL(finished(QNetworkReply*)), this, SLOT(createUserComplete(QNetworkReply*)));
    nm->post(request, QJsonDocument(dataObj).toJson());
}

void UserManagement::createUserComplete(QNetworkReply* reply) {
    disconnect(nm, SIGNAL(finished(QNetworkReply*)), this, SLOT(createUserComplete(QNetworkReply*)));

    QJsonObject replyObj = QJsonDocument::fromJson(reply->readAll()).object();
    QString status = replyObj["status"].toString().trimmed();
    QString username = replyObj["username"].toString();

    if (status == "SUCCESS" || status == "OKAY") {
        QString msg = "Account successfully created. Please check your email "
                + username + " to enable it!";
        emit createUserComplete(true, msg);
    } else {
        emit createUserComplete(false, status);
    }
}
