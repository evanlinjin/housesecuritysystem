#ifndef KEYRECEIVER_H
#define KEYRECEIVER_H

#include <QObject>
#include <QEvent>
#include <QKeyEvent>
#include <QDebug>

class KeyReceiver : public QObject
{
    Q_OBJECT
public:
    explicit KeyReceiver(QObject *parent = 0);

protected:
    bool eventFilter(QObject* obj, QEvent* event);

private:
    int stackDepth;

signals:
    void popStack();

public slots:
    void updateStackDepth(int v);
};

#endif // KEYRECEIVER_H
