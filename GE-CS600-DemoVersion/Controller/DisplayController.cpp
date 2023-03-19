#include "DisplayController.h"
#include "Model/DisplayModel.h"

QObject *getDisplayModelObj(QQmlEngine *qmlEngine, QJSEngine *jsEngine)
{
    Q_UNUSED(qmlEngine);
    Q_UNUSED(jsEngine);

    return DisplayModel::getInstance();
}

DisplayController::DisplayController()
{
    qmlRegisterSingletonType<DisplayModel>("DisplayModel", 1, 0,
                                           "DisplayModel", getDisplayModelObj);
}

