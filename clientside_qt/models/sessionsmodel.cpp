#include "sessionsmodel.h"

SessionsModel::SessionsModel(QObject* parent) : QAbstractListModel(parent)
{
    qDebug() << "SessionsModel CREATED!";
}

SessionsModel::~SessionsModel()
{
    qDebug() << "SessionsModel DELETED!";
}

SessionsModel *SessionsModel::linkUp(NetworkManager *n, SettingsManager *s)
{
    nm = n;
    settings = s;
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
    return roles;
}

void SessionsModel::append(const SessionItem &item)
{
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    m_sessions << item;
    endInsertRows();
}

void SessionsModel::refresh()
{
    clear();
    emit loadingStart("Retrieving Data...");

    // Prepare network request.
    QNetworkRequest request;
    request.setUrl(QUrl("https://telepool-144405.appspot.com/api/v1/list_user_sessions"));
    request.setRawHeader("Content-Type", "application/json");

    QJsonObject dataObj;
    dataObj["user_id"] = QJsonValue(settings->value("session/uid").toString());
    dataObj["session_id"] = QJsonValue(settings->value("session/sid").toString());
    dataObj["session_key"] = QJsonValue(settings->value("session/skey").toString());

    // Send Request.
    QNetworkReply* reply = nm->post(request, QJsonDocument(dataObj).toJson());

    // Read network reply.
    QJsonObject replyObj = QJsonDocument::fromJson(reply->readAll()).object();
    reply->deleteLater();

    // Get reply status.
    emit loadingStart("Processing Data...");
    QString status = replyObj["status"].toString().trimmed();

    if (status == "SUCCESS" || status == "OKAY")
    {
        QJsonArray array = replyObj["sessions"].toArray();

        // Iterate through sessions.
        for (int i = 0; i < array.count(); i++) {

            QJsonObject sObj = array.at(i).toObject();

            SessionItem item;
            item.sessionID = sObj["session_id"].toString();
            item.userID = sObj["user_id"].toString();
            item.loginTime = sObj["login_time"].toInt();
            item.lastSeenTime = sObj["last_seen_time"].toInt();
            item.client = sObj["client"].toString();

            append(item);
        }
    }

    emit loadingStop();
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



























