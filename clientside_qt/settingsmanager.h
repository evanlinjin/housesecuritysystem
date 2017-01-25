#ifndef SETTINGSMANAGER_H
#define SETTINGSMANAGER_H

#include <QObject>
#include <QSettings>

class SettingsManager : public QSettings
{
public:
    SettingsManager(const QString &organization, const QString &application = QString(), QObject *parent = 0);

    QString getString(QString key);
    int getInt(QString key);
    bool getBool(QString key);
};

#endif // SETTINGSMANAGER_H
