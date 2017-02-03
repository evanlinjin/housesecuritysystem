#ifndef DONEMANAGER_H
#define DONEMANAGER_H

#include <QObject>

class DoneManager : public QObject
{
    Q_OBJECT
public:
    DoneManager(QObject *parent = 0);

private:
    bool done;

public slots:
    bool getDone();
    void setDone();
};

#endif // DONEMANAGER_H
