#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "messagereceiver.h"
#include "usermanagement.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    MessageReceiver msgR();

    QQmlApplicationEngine engine;
    qmlRegisterType<UserManagement>("UserManagement", 1, 0, "UserManagement");
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
