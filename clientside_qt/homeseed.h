#ifndef HOMESEED_H
#define HOMESEED_H

#include <QObject>
#include <QJsonObject>
#include <QJsonDocument>
#include <QEventLoop>
#include <QKeyEvent>
#include <QSysInfo>

#include "networkmanager.h"
#include "settingsmanager.h"
#include "sessionmanager.h"
#include "loadingmanager.h"

#include "models/sessionsmodel.h"

class Homeseed : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int stackDepth READ stackDepth WRITE stackDepth NOTIFY stackDepthChanged)

public:
    explicit Homeseed(QObject *parent = 0);
    ~Homeseed();

    void stackDepth(const int &a);
    int stackDepth() const;

    SessionManager* session;
    SettingsManager* settings;
    NetworkManager* network;
    LoadingManager* loading;

protected:
    bool eventFilter(QObject* obj, QEvent* event);

private:
    int m_stackDepth;

signals:
    void popPageStack();
    void stackDepthChanged();

public slots:
    void abortAll();

    SessionsModel* genSessionsModel(QObject *parent = 0);
};

#endif // HOMESEED_H
