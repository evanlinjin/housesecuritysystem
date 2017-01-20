#ifndef NEWUSERMANAGER_H
#define NEWUSERMANAGER_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QJsonObject>
#include <QJsonDocument>

class NewUserManager : public QObject
{
    Q_OBJECT
public:
    explicit NewUserManager(QObject *parent = 0);

private:
    QNetworkAccessManager* nm;

signals:
    void createUserComplete(bool success, QString msg);

public slots:
    bool testUsernameEmail(QString username);
    bool testUsernameUnique(QString username);

    void createUser(QString email, QString password);

private slots:
    void createUserComplete(QNetworkReply*);
};

#endif // NEWUSERMANAGER_H
