#include "settingsmanager.h"

SettingsManager::SettingsManager(const QString &organization, const QString &application, QObject *parent) :
    QSettings(organization, application, parent)
{

}

QString SettingsManager::getString(QString key)
{
    return QSettings::value(key, "").toString();
}

int SettingsManager::getInt(QString key)
{
    return QSettings::value(key, 0).toInt();
}

bool SettingsManager::getBool(QString key)
{
    return QSettings::value(key, false).toBool();
}
