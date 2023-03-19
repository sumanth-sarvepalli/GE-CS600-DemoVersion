#ifndef DISPLAYCONTROLLER_H
#define DISPLAYCONTROLLER_H

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml/qqml.h>

class DisplayController : public QObject
{
    Q_OBJECT
public:
    DisplayController();

    Q_INVOKABLE void confirmButtonPressed();
};

#endif // DISPLAYCONTROLLER_H
