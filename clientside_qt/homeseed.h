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
#include "newusermanager.h"

#include "models/sessionsmodel.h"

class Homeseed : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int stackDepth READ stackDepth WRITE stackDepth NOTIFY stackDepthChanged)
    Q_PROPERTY(bool popupOpen READ popupOpen WRITE popupOpen NOTIFY popupOpenChanged)

public:
    explicit Homeseed(QObject *parent = 0);
    ~Homeseed();

    void stackDepth(const int &a);
    int stackDepth() const;

    void popupOpen(const bool &a);
    bool popupOpen() const;

    SessionManager* session;
    SettingsManager* settings;
    NetworkManager* network;
    LoadingManager* loading;

protected:
    bool eventFilter(QObject* obj, QEvent* event);

private:
    int m_stackDepth;
    bool m_popupOpen;

signals:
    void popPageStack();
    void closePopup();

    void stackDepthChanged();
    void popupOpenChanged();

public slots:
    void abortAll();

    NewUserManager* genNewUserManager(QObject *parent = 0);
    SessionsModel* genSessionsModel(QObject *parent = 0);
};

#endif // HOMESEED_H
