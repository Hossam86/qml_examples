#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include<Controllers/system.h>
#include<hvachandler.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    System m_systemHandler;
    HvacHandler m_driverHvac;
    HvacHandler m_passengerhavc;


    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/tesla_dashboard/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    QQmlContext *context(engine.rootContext());
    context->setContextProperty("systemHandler", &m_systemHandler);
    context->setContextProperty("driverHvac", &m_driverHvac);
    context->setContextProperty("passengerHvac", &m_passengerhavc);

    return app.exec();
}
