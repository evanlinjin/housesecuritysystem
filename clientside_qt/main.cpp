#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQuickControls2/QQuickStyle>

#include "messagereceiver.h"
#include "newusermanager.h"
#include "sessionmanager.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    //MessageReceiver msgR();
    QQuickStyle::setStyle("Universal");

    QQmlApplicationEngine engine;
    qmlRegisterType<NewUserManager>("HSS", 1, 0, "NewUserManager");
    qmlRegisterType<SessionManager>("HSS", 1, 0, "SessionManager");

    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
