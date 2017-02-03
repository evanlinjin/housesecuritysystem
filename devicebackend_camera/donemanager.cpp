#include "donemanager.h"

DoneManager::DoneManager(QObject * parent) :
    QObject(parent), done(false)
{

}

bool DoneManager::getDone()
{
    return done;
}

void DoneManager::setDone()
{
    done = true;
}
