#include "keyreceiver.h"

KeyReceiver::KeyReceiver(QObject *parent) : QObject(parent)
{
    stackDepth = 1;
}

bool KeyReceiver::eventFilter(QObject* obj, QEvent* event)
{
    if (event->type() == QEvent::KeyRelease) {
        QKeyEvent* key = static_cast<QKeyEvent*>(event);
        if (key->key() == Qt::Key_Back || key->key() == Qt::Key_Escape) {
            if (stackDepth > 1) {
                emit popStack();
                return true;
            }
        }
    }
    return QObject::eventFilter(obj, event);
}

void KeyReceiver::updateStackDepth(int v)
{
    qDebug() << "Stack Depth is now:" << v;
    this->stackDepth = v;
}
