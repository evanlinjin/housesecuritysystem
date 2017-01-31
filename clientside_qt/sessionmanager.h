#ifndef SESSIONMANAGER_H
#define SESSIONMANAGER_H

#include <QObject>

#include "networkmanager.h"
#include "settingsmanager.h"
#include "loadingmanager.h"

#define S_PROPERTY(TYPE,NAME) Q_PROPERTY(TYPE NAME READ NAME WRITE NAME NOTIFY paramChanged)
#define S_WRITE(TYPE,NAME) void NAME(const TYPE& a) {sm->setValue(QString("session/%1").arg(#NAME),a); emit paramChanged();}
#define S_READ(TYPE,NAME,FUNC) TYPE NAME() const {return sm->FUNC(QString("session/%1").arg(#NAME));}
#define S_QML_EXPOSE(TYPE,FUNC,NAME) S_PROPERTY(TYPE,NAME) S_READ(TYPE,NAME,FUNC) S_WRITE(TYPE,NAME)

class SessionManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool isLoggedIn READ isLoggedIn NOTIFY isLoggedInChanged)
public:
    S_QML_EXPOSE(QString, getString, uid) // User ID
    S_QML_EXPOSE(QString, getString, email) // Email
    S_QML_EXPOSE(QString, getString, sid) // Session ID
    S_QML_EXPOSE(QString, getString, skey) // Session Key
    S_QML_EXPOSE(QString, getString, client) // Client Information
    S_QML_EXPOSE(int, getInt, loginTime) // Login Time
    S_QML_EXPOSE(int, getInt, lastSeenTime) // Last Seen Time

public:
    explicit SessionManager(QObject *parent = 0);
    SessionManager* linkUp(SettingsManager* sm, NetworkManager* nm, LoadingManager* lm);

    bool isLoggedIn() const;

private:
    SettingsManager* sm;
    NetworkManager* nm;
    LoadingManager* lm;

signals:
    void paramChanged();
    void isLoggedInChanged();

public slots:
    QString getClientInfo();

    void login(QString email, QString password);
    void logout();

};

#endif // SESSIONMANAGER_H
