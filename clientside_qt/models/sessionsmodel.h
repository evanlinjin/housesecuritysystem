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

#include "settingsmanager.h"
#include "networkmanager.h"

struct SessionItem {
    QString sessionID;
    QString userID;
    int loginTime;
    int lastSeenTime;
    QString client;
    QString sessionType;
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
        ClientRole,
        SessionTypeRole
    };
    QHash<int, QByteArray> roleNames() const;

    explicit SessionsModel(QObject *parent = 0);
    ~SessionsModel();
    SessionsModel* linkUp(NetworkManager* n, SettingsManager *s);

    int rowCount(const QModelIndex & parent = QModelIndex()) const;
    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;

private:
    SettingsManager* settings;
    NetworkManager* nm;

    QList<SessionItem> m_sessions;

    void append(const SessionItem &item);
    void displaySessions(QJsonArray &array);

signals:
    void loadingStart(QString msg);
    void loadingStop();

public slots:
    void deleteSession(QString sid);
    void deleteAllOtherSessions();

    void refresh();
    void clear();

};

#endif // SESSIONSMODEL_H
