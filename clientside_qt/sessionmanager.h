#ifndef SESSIONMANAGER_H
#define SESSIONMANAGER_H

#include <QObject>
#include <QSettings>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QJsonObject>
#include <QJsonDocument>
#include <QEventLoop>

class SessionManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString uid READ uid WRITE setUid NOTIFY uidChanged)
    Q_PROPERTY(QString email READ email WRITE setEmail NOTIFY emailChanged)
    Q_PROPERTY(QString sid READ sid WRITE setSid NOTIFY sidChanged)
    Q_PROPERTY(QString skey READ skey WRITE setSkey NOTIFY skeyChanged)
    Q_PROPERTY(int loginTime READ loginTime WRITE setLoginTime NOTIFY loginTimeChanged)
    Q_PROPERTY(int lastSeenTime READ lastSeenTime WRITE setLastSeenTime NOTIFY lastSeenTimeChanged)

public:
    explicit SessionManager(QObject *parent = 0);
    ~SessionManager();

    QString uid() const {return settings->value("session/uid").toString();}
    QString email() const {return settings->value("session/email").toString();}
    QString sid() const {return settings->value("session/sid").toString();}
    QString skey() const {return settings->value("session/skey").toString();}
    int loginTime() const {return settings->value("session/loginTime").toInt();}
    int lastSeenTime() const {return settings->value("session/lastSeenTime").toInt();}

    void setUid(const QString& a) {settings->setValue("session/uid", a); emit uidChanged();}
    void setEmail(const QString& a) {settings->setValue("session/email", a); emit emailChanged();}
    void setSid(const QString& a) {settings->setValue("session/sid", a); emit sidChanged();}
    void setSkey(const QString& a) {settings->setValue("session/skey", a); emit skeyChanged();}
    void setLoginTime(const int& a) {settings->setValue("session/loginTime", a); emit loginTimeChanged();}
    void setLastSeenTime(const int& a) {settings->setValue("session/lastSeenTime", a); emit lastSeenTimeChanged();}

private:
    QSettings* settings;
    QNetworkAccessManager* nm;

signals:
    void uidChanged();
    void emailChanged();
    void sidChanged();
    void skeyChanged();
    void loginTimeChanged();
    void lastSeenTimeChanged();

    void loggedIn();
    void loggedOut();

    void loadingStart(QString msg);
    void loadingStop();

public slots:
    bool login(QString email, QString password);
    bool logout();
    bool isLoggedIn();

};

#endif // SESSIONMANAGER_H
