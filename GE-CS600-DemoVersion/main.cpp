#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "Controller/DisplayController.h"

/***********************************************//*!
* @brief
*   getDisplayControllerObj
* @par
*   To get instance of the Model
* @author
*   sumanth
* @param
*   qmlEngine, jsEngine
* @return
*   DisplayControllerObj
************************************************/
QObject *getDisplayControllerObj(QQmlEngine *qmlEngine, QJSEngine *jsEngine)
{
    Q_UNUSED(qmlEngine);
    Q_UNUSED(jsEngine);

    static DisplayController DisplayControllerObj;
    return &DisplayControllerObj;
}

/***********************************************//*!
* @brief
*   main
* @par
*   Driver function
* @author
*   Qt
* @param
*   argc, argv
* @return
*   application execution
************************************************/
int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    DisplayController DisplayControllerObj;
    Q_UNUSED(DisplayControllerObj);

    qmlRegisterSingletonType<DisplayController>("DisplayController", 1, 0,
                                           "DisplayController", getDisplayControllerObj);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
