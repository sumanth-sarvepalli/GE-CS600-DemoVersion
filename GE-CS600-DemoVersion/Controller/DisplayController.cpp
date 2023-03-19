#include "DisplayController.h"
#include "Model/DisplayModel.h"

/***********************************************//*!
* @brief
*   getDisplayModelObj
* @par
*   To get instance of the Model
* @author
*   sumanth
* @param
*   qmlEngine, jsEngine
* @return
*   DisplayModel::getInstance
************************************************/
QObject *getDisplayModelObj(QQmlEngine *qmlEngine, QJSEngine *jsEngine)
{
    Q_UNUSED(qmlEngine);
    Q_UNUSED(jsEngine);

    return DisplayModel::getInstance();
}

/***********************************************//*!
* @brief
*   DisplayController::DisplayController
* @par
*   Constructor of the Controller
* @author
*   sumanth
* @param
*   none
* @return
*   none
************************************************/
DisplayController::DisplayController()
{
    qmlRegisterSingletonType<DisplayModel>("DisplayModel", 1, 0,
                                           "DisplayModel", getDisplayModelObj);
}

/***********************************************//*!
* @brief
*   DisplayController::confirmButtonPressed
* @par
*   To perfom action on click of confirm button
* @author
*   sumanth
* @param
*   none
* @return
*   none
************************************************/
void DisplayController::confirmButtonPressed()
{
    DisplayModel::getInstance()->createInstructionList();
}
