#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "Controllers/controller.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType< Controller >( "ThermoStat", 1, 0, "SystemController" );


    const QUrl url(u"qrc:/smart_thermostate/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
