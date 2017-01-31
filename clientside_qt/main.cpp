#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <QtQml/QQmlContext>
#include <QtQuickControls2/QQuickStyle>
#include <QtDebug>

#include "homeseed.h"
//#include "messagereceiver.h"
#include "loadingmanager.h"
#include "newusermanager.h"

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
    Homeseed* homeseed = new Homeseed();

    app.installEventFilter(homeseed);

    // Expose generated objects.
    qc->setContextProperty("Homeseed", homeseed);
    qc->setContextProperty("Session", homeseed->session);
    qc->setContextProperty("Loading", homeseed->loading);

    // Allow object generation in QML.
    qmlRegisterType<NewUserManager>("HSS", 1, 0, "NewUserManager");
    qmlRegisterType<SessionsModel>("HSS", 1, 0, "SessionsModel");

    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    return app.exec();
}
