#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <QtQml/QQmlContext>
#include <QtQuickControls2/QQuickStyle>
#include <QtDebug>

#include "keyreceiver.h"
#include "sessionmanager.h"
#include "messagereceiver.h"
#include "newusermanager.h"
#include "sessionmanager.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setOrganizationName("Gooseberry");
    QCoreApplication::setApplicationName("Homeseed");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQuickStyle::setStyle("Universal");

    QQmlApplicationEngine engine;
    QQmlContext* qc = engine.rootContext();

    // Generated objects.
    SessionManager* sessionManager = new SessionManager("Qt App");
    KeyReceiver* keyReceiver = new KeyReceiver();

    app.installEventFilter(keyReceiver);
    qInfo() << "CLIENT INFO:" << sessionManager->getClientInfo();

    // Expose generated objects.
    qc->setContextProperty("KeyReceiver", keyReceiver);
    qc->setContextProperty("Session", sessionManager);

    // Allow object generation in QML.
    qmlRegisterType<NewUserManager>("HSS", 1, 0, "NewUserManager");
    qmlRegisterType<SessionsModel>("HSS", 1, 0, "SessionsModel");

    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    return app.exec();
}
