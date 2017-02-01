#ifndef LOADINGMANAGER_H
#define LOADINGMANAGER_H

#include <QObject>

class LoadingManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool active READ active WRITE active NOTIFY activeChanged)

public:
    explicit LoadingManager(QObject *parent = 0);

    void active(const bool &a);
    bool active() const;

private:
    bool m_active;

signals:
    void loadingStart(QString msg, bool showCancel);
    void loadingStop();

    void activeChanged();

private slots:
    void setLoadingActiveTrue();
    void setLoadingActiveFalse();

};

#endif // LOADINGMANAGER_H
