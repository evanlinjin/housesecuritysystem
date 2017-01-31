#ifndef LOADINGMANAGER_H
#define LOADINGMANAGER_H

#include <QObject>

class LoadingManager : public QObject
{
    Q_OBJECT
public:
    explicit LoadingManager(QObject *parent = 0);

private:

signals:
    void loadingStart(QString msg, bool showCancel);
    void loadingStop();

public slots:


};

#endif // LOADINGMANAGER_H
