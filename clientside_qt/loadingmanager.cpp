#include "loadingmanager.h"

LoadingManager::LoadingManager(QObject *parent) : QObject(parent)
{
    m_active = false;
    connect(this, SIGNAL(loadingStart(QString, bool)),
            this, SLOT(setLoadingActiveTrue()));
    connect(this, SIGNAL(loadingStop()),
            this, SLOT(setLoadingActiveFalse()));
}

void LoadingManager::active(const bool &a)
{
    if (a == m_active) { return; }
    m_active = a;
    emit activeChanged();
}

bool LoadingManager::active() const
{
    return m_active;
}

void LoadingManager::setLoadingActiveTrue()
{
    active(true);
}

void LoadingManager::setLoadingActiveFalse()
{
    active(false);
}
