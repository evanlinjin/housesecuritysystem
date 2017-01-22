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

void NewUserManager::createUser(QString email, QString password)
{
    emit loadingStart("Creating new account...");
    // Prepare network request.
    QNetworkRequest request;
    request.setUrl(QUrl("https://telepool-144405.appspot.com/api/v1/create_user"));
    request.setRawHeader("Content-Type", "application/json");

    QJsonObject dataObj;
    dataObj["email"] = QJsonValue(email);
    dataObj["password"] = QJsonValue(password);

    // Send Request.
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

    if (status == "SUCCESS" || status == "OKAY") {
        QString msg = "Account successfully created. Please check your email "
                + email + " to enable it!";
        emit createUserComplete(msg);
    } else {
        emit createUserComplete(status);
    }
    emit loadingStop();
}
