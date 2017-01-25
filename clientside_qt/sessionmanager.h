#ifndef SESSIONMANAGER_H
#define SESSIONMANAGER_H

#include <QObject>
#include <QJsonObject>
#include <QJsonDocument>
#include <QEventLoop>
#include <QSysInfo>

#include "networkmanager.h"
#include "settingsmanager.h"
#include "models/sessionsmodel.h"

#define S_PROPERTY(TYPE,NAME) Q_PROPERTY(TYPE NAME READ NAME WRITE NAME NOTIFY sessionParamChanged)
#define S_WRITE(TYPE,NAME) void NAME(const TYPE& a) {settings->setValue(QString("session/%1").arg(#NAME),a); emit sessionParamChanged();}
#define S_READ(TYPE,NAME,FUNC) TYPE NAME() const {return settings->FUNC(QString("session/%1").arg(#NAME));}
#define S_QML_EXPOSE(TYPE,FUNC,NAME) S_PROPERTY(TYPE,NAME) S_READ(TYPE,NAME,FUNC) S_WRITE(TYPE,NAME)

class SessionManager : public QObject
{
    Q_OBJECT
    S_QML_EXPOSE(QString, getString, uid) // User ID
    S_QML_EXPOSE(QString, getString, email) // Email
    S_QML_EXPOSE(QString, getString, sid) // Session ID
    S_QML_EXPOSE(QString, getString, skey) // Session Key
    S_QML_EXPOSE(QString, getString, client) // Client Information
    S_QML_EXPOSE(int, getInt, loginTime) // Login Time
    S_QML_EXPOSE(int, getInt, lastSeenTime) // Last Seen Time

public:
    explicit SessionManager(QString appStr, QObject *parent = 0);
    ~SessionManager();

private:
    SettingsManager* settings;
    NetworkManager* nm;
    QString appName, appVersion, appStr;

signals:
    void sessionParamChanged();

    void loggedIn();
    void loggedOut();

    void loadingStart(QString msg);
    void loadingStop();

public slots:
    QString getClientInfo();

    bool login(QString email, QString password);
    bool logout();
    bool isLoggedIn();

    void abortAll();

    SessionsModel* genSessionsModel(QObject *parent = 0);
};

#endif // SESSIONMANAGER_H
