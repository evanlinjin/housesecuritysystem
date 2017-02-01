#ifndef NEWUSERMANAGER_H
#define NEWUSERMANAGER_H

#include <QObject>
#include <QJsonObject>
#include <QDebug>

#include "networkmanager.h"
#include "loadingmanager.h"

class NewUserManager : public QObject
{
    Q_OBJECT
public:
    explicit NewUserManager(QObject *parent = 0);
    ~NewUserManager();
    NewUserManager* linkUp(NetworkManager* nm, LoadingManager* lm);

private:
    NetworkManager* nm;
    LoadingManager* lm;

signals:
    void createUserComplete(QString msg);

public slots:
    bool testUsernameEmail(QString username);
    bool testUsernameUnique(QString username);

    void createUser(QString email, QString password);
};

#endif // NEWUSERMANAGER_H
