#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "messagereceiver.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    MessageReceiver msgR(
                "pub-c-ed602478-ff17-43d0-bffc-8a7bbf288bec",
                "sub-c-0c523a04-d172-11e6-b045-02ee2ddab7fe"
                );

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
