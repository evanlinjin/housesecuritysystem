#include "homeseed.h"

Homeseed::Homeseed(QObject *parent) : QObject(parent)
{
    session = new SessionManager(this);
    settings = new SettingsManager("Gooseberry", "Homeseed", this);
    network = new NetworkManager(this);
    loading = new LoadingManager(this);

    session->linkUp(settings, network, loading);
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
    emit stackDepthChanged();
}

int Homeseed::stackDepth() const
{
    return m_stackDepth;
}

bool Homeseed::eventFilter(QObject* obj, QEvent* event)
{
    if (event->type() == QEvent::KeyRelease) {
        QKeyEvent* key = static_cast<QKeyEvent*>(event);
        if (key->key() == Qt::Key_Back || key->key() == Qt::Key_Escape) {
            if (stackDepth() > 1) {
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

SessionsModel* Homeseed::genSessionsModel(QObject *parent)
{
    SessionsModel* temp = new SessionsModel(parent);
    return temp->linkUp(network, session, loading);
}
