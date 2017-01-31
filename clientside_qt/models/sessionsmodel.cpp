#include "sessionsmodel.h"

SessionsModel::SessionsModel(QObject* parent) : QAbstractListModel(parent)
{
    qDebug() << "SessionsModel CREATED!";
}

SessionsModel::~SessionsModel()
{
    qDebug() << "SessionsModel DELETED!";
}

SessionsModel *SessionsModel::linkUp(NetworkManager *n, SessionManager* session, LoadingManager *lm)
{
    this->session = session;
    nm = n;
    this->lm = lm;
    return this;
}

int SessionsModel::rowCount(const QModelIndex & parent) const
{
    Q_UNUSED(parent);
    return m_sessions.count();
}

QVariant SessionsModel::data(const QModelIndex & index, int role) const
{
    if (index.row() < 0 || index.row() >= m_sessions.count()) {
        return QVariant();
    }

    const SessionItem &item = m_sessions[index.row()];

    switch (role) {
    case SessionIDRole:
        return QVariant(item.sessionID);
    case UserIDRole:
        return QVariant(item.userID);
    case LoginTimeRole:
        return QVariant(item.loginTime);
    case LastSeenTimeRole:
        return QVariant(item.lastSeenTime);
    case ClientRole:
        return QVariant(item.client);
    case SessionTypeRole:
        return QVariant(item.sessionType);
    }

    return QVariant();
}

QHash<int, QByteArray> SessionsModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[SessionIDRole] = "sessionID";
    roles[UserIDRole] = "userID";
    roles[LoginTimeRole] = "loginTime";
    roles[LastSeenTimeRole] = "lastSeenTime";
    roles[ClientRole] = "client";
    roles[SessionTypeRole] = "sessionType";
    return roles;
}

void SessionsModel::append(const SessionItem &item)
{
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    m_sessions << item;
    endInsertRows();
}

void SessionsModel::displaySessions(QJsonArray &array)
{
    clear();
    QList<SessionItem> m_sessions;

    // Iterate through sessions.
    for (int i = 0; i < array.count(); i++) {
        QJsonObject sObj = array.at(i).toObject();

        SessionItem item;
        item.sessionID = sObj["session_id"].toString();
        item.userID = sObj["user_id"].toString();
        item.loginTime = sObj["login_time"].toInt();
        item.lastSeenTime = sObj["last_seen_time"].toInt();
        item.client = sObj["client"].toString();

        if (item.sessionID == session->sid()) {
            item.sessionType = "Current Session";

            if (i > 0) {
                SessionItem temp = m_sessions[0];
                m_sessions[0] = item;
                m_sessions << temp;
            } else {
                m_sessions << item;
            }

        } else {
            item.sessionType = "Active Sessions";
            m_sessions << item;
        }
    }
    beginInsertRows(QModelIndex(), 0, array.count()-1);
    this->m_sessions = m_sessions;
    endInsertRows();
}

void SessionsModel::deleteSession(QString sid)
{
    emit lm->loadingStart("Deleting session...", false);

    QJsonArray dataArray;
    dataArray.append(QJsonValue(sid));

    QJsonObject dataObj;

    dataObj["user_id"] = QJsonValue(session->uid());
    dataObj["session_id"] = QJsonValue(session->sid());
    dataObj["session_key"] = QJsonValue(session->skey());
    dataObj["sessions_to_delete"] = QJsonValue(dataArray);

    QJsonObject replyObj = nm->jsonPost(QUrl("https://telepool-144405.appspot.com/api/v1/delete_user_sessions"), dataObj);

    // Get reply status.
    QString status = replyObj["status"].toString().trimmed();

    if (status == "SUCCESS" || status == "OKAY")
    {
        QJsonArray array = replyObj["active_sessions"].toArray();
        displaySessions(array);
    }

    emit lm->loadingStop();
    return;
}

void SessionsModel::deleteAllOtherSessions()
{
    emit lm->loadingStart("Deleting Sessions...", false);

    QJsonArray dataArray;
    for (int i = 0; i < m_sessions.count(); i++) {
        QString sid = m_sessions[i].sessionID;
        if (sid != session->sid()) {
            dataArray.append(QJsonValue(sid));
        }
    }

    QJsonObject dataObj;
    dataObj["user_id"] = QJsonValue(session->uid());
    dataObj["session_id"] = QJsonValue(session->sid());
    dataObj["session_key"] = QJsonValue(session->skey());
    dataObj["sessions_to_delete"] = QJsonValue(dataArray);

    QJsonObject replyObj = nm->jsonPost(QUrl("https://telepool-144405.appspot.com/api/v1/delete_user_sessions"), dataObj);

    // Get reply status.
    QString status = replyObj["status"].toString().trimmed();

    if (status == "SUCCESS" || status == "OKAY")
    {
        QJsonArray array = replyObj["active_sessions"].toArray();
        displaySessions(array);
    }

    emit lm->loadingStop();
    return;
}


void SessionsModel::refresh()
{
    emit lm->loadingStart("Retrieving Data...", true);

    QJsonObject dataObj;
    dataObj["user_id"] = QJsonValue(session->uid());
    dataObj["session_id"] = QJsonValue(session->sid());
    dataObj["session_key"] = QJsonValue(session->skey());

    // Send Request.
    QJsonObject replyObj = nm->jsonPost(QUrl("https://telepool-144405.appspot.com/api/v1/list_user_sessions"), dataObj);

    // Get reply status.
    QString status = replyObj["status"].toString().trimmed();

    if (status == "SUCCESS" || status == "OKAY")
    {
        QJsonArray array = replyObj["sessions"].toArray();
        displaySessions(array);
    }

    emit lm->loadingStop();
    return;
}

void SessionsModel::clear()
{
    if (m_sessions.count() == 0) {
        return;
    }
    beginRemoveRows(QModelIndex(), 0, m_sessions.count()-1);
    m_sessions.clear();
    endRemoveRows();
}



























