#ifndef SESSIONSMODEL_H
#define SESSIONSMODEL_H

#include <QObject>
#include <QAbstractListModel>
#include <QStringList>
#include <QJsonObject>
#include <QJsonArray>
#include <QDebug>

#include "loadingmanager.h"
#include "networkmanager.h"
#include "sessionmanager.h"

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
    SessionsModel* linkUp(NetworkManager* n, SessionManager *session, LoadingManager* lm);

    int rowCount(const QModelIndex & parent = QModelIndex()) const;
    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;

private:
    SessionManager* session;
    NetworkManager* nm;
    LoadingManager* lm;

    QList<SessionItem> m_sessions;

    void append(const SessionItem &item);
    void displaySessions(QJsonArray &array);

signals:

public slots:
    void deleteSession(QString sid);
    void deleteAllOtherSessions();

    void refresh();
    void clear();

};

#endif // SESSIONSMODEL_H
