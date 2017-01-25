#ifndef SESSIONSMODEL_H
#define SESSIONSMODEL_H

#include <QObject>
#include <QAbstractListModel>
#include <QStringList>
#include <QSettings>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QJsonObject>
#include <QJsonDocument>
#include <QJsonArray>
#include <QEventLoop>
#include <QCoreApplication>
#include <QDebug>

#include "networkmanager.h"

struct SessionItem {
    // Session Info.
    QString sessionID;
    QString userID;
    int loginTime;
    int lastSeenTime;
    // Client Info.
    QString appName;
    QString appVersion;
    QString osName;
    QString osVersion;
};

class SessionsModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum SessionRoles {
        SessionIDRole = Qt::UserRole + 1,
        UserIDRole,
        LoginTimeRole,
        LastSeenTimeRole,
        AppNameRole,
        AppVersionRole,
        OSNameRole,
        OSVersionRole
    };
    QHash<int, QByteArray> roleNames() const;

    explicit SessionsModel(QObject *parent = 0);
    ~SessionsModel();
    SessionsModel* linkUp(NetworkManager* n, QSettings* s);

    int rowCount(const QModelIndex & parent = QModelIndex()) const;
    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;

private:
    QSettings* settings;
    NetworkManager* nm;

    QList<SessionItem> m_sessions;

    void append(const SessionItem &item);

signals:
    void loadingStart(QString msg);
    void loadingStop();

public slots:
    void refresh();
    void clear();

};

#endif // SESSIONSMODEL_H
