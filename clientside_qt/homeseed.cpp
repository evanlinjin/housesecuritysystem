#include "homeseed.h"

Homeseed::Homeseed(QObject *parent) : QObject(parent)
{
    session = new SessionManager(this);
    settings = new SettingsManager("Gooseberry", "Homeseed", this);
    network = new NetworkManager(this);
    loading = new LoadingManager(this);

    session->linkUp(settings, network, loading);

    m_stackDepth = 1;
}

Homeseed::~Homeseed()
{
    session->deleteLater();
    settings->deleteLater();
    network->deleteLater();
    loading->deleteLater();
}

void Homeseed::stackDepth(const int &a)
{
    if (a == m_stackDepth) { return; }
    m_stackDepth = a;
    qDebug() << "STACK DEPTH:" << a;
    emit stackDepthChanged();
}

int Homeseed::stackDepth() const
{
    return m_stackDepth;
}

void Homeseed::popupOpen(const bool &a)
{
    if (a == m_popupOpen) { return; }
    m_popupOpen = a;
    emit popupOpenChanged();
}

bool Homeseed::popupOpen() const
{
    return m_popupOpen;
}

bool Homeseed::eventFilter(QObject* obj, QEvent* event)
{
    if (event->type() == QEvent::KeyRelease) {
        QKeyEvent* key = static_cast<QKeyEvent*>(event);
        if (key->key() == Qt::Key_Back || key->key() == Qt::Key_Escape) {
            if (loading->active() == true) {
                // Should something be done here?
                return true;
            }
            if (popupOpen() == true) {
                popupOpen(false);
                emit closePopup();
                return true;
            }
            if (stackDepth() > 1) {
                qDebug() << "EMITTING:" << "popPageStack";
                emit popPageStack();
                return true;
            }
        }
    }
    return QObject::eventFilter(obj, event);
}

void Homeseed::abortAll()
{
    emit network->abort();
    emit loading->loadingStop();
}

NewUserManager* Homeseed::genNewUserManager(QObject *parent)
{
    NewUserManager* temp = new NewUserManager(parent);
    return temp->linkUp(network, session, loading);
}

SessionsModel* Homeseed::genSessionsModel(QObject *parent)
{
    SessionsModel* temp = new SessionsModel(parent);
    return temp->linkUp(network, session, loading);
}
