#include "DisplayModel.h"

/***********************************************//*!
* @brief
*   DisplayModel::DisplayModel
* @par
*   Constructor of the Model
* @author
*   sumanth
* @param
*   parent
* @return
*   none
************************************************/
DisplayModel::DisplayModel(QObject *parent) : QAbstractListModel(parent)
{
    m_InstructionsList.clear();
    m_DataCount = 0;
}

/***********************************************//*!
* @brief
*   DisplayModel::~DisplayModel
* @par
*   Destructor of the Model
* @author
*   sumanth
* @param
*   none
* @return
*   none
************************************************/
DisplayModel::~DisplayModel()
{
    m_InstructionsList.clear();
    m_DataCount = 0;
}

/***********************************************//*!
* @brief
*   DisplayModel::getInstance
* @par
*   Get Model static instance pointer
* @author
*   sumanth
* @param
*   none
* @return
*   Model Object
************************************************/
DisplayModel* DisplayModel::getInstance()
{
    static DisplayModel DisplayModelObj;
    return &DisplayModelObj;
}

/***********************************************//*!
* @brief
*   DisplayModel::rowCount
* @par
*   To get number of rows under given parent.
* @author
*   sumanth
* @param
*   parent
* @return
*   Data Count
************************************************/
int DisplayModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_DataCount;
}

/***********************************************//*!
* @brief
*   DisplayModel::data
* @par
*   To get the data stored under the given role for the item refeerred to the index.
* @author
*   sumanth
* @param
*   index, role
* @return
*   role value
************************************************/
QVariant DisplayModel::data(const QModelIndex &index, int role) const
{
    QVariant roleValue = QVariant();

    switch (role) {
    case InstructionRole:
        roleValue = m_InstructionsList;
        break;
    case LabelRole:
        roleValue = index.row();
        break;
    case ShowButtonRole:
        roleValue = m_ButtonData.bShowButton;
        break;
    case EnableButtonRole:
        roleValue = m_ButtonData.bEnableButton;
        break;
    case ButtonTextRole:
        roleValue = m_ButtonData.sButtonText;
        break;
    }
    return roleValue;
}

/***********************************************//*!
* @brief
*   DisplayModel::roleNames
* @par
*   To get model's role names.
* @author
*   sumanth
* @param
*   none
* @return
*   roles
************************************************/
QHash<int, QByteArray> DisplayModel::roleNames() const
{
    QHash<int, QByteArray> roles;

    roles[InstructionRole] = "sInstructionRole";
    roles[LabelRole] = "nIndexRole";
    roles[ShowButtonRole] = "bShowButtonRole";
    roles[EnableButtonRole] = "bEnableButtonRole";
    roles[ButtonTextRole] = "sButtonTextRole";
    return roles;
}

/***********************************************//*!
* @brief
*   DisplayModel::updateRoles
* @par
*   To update the role values.
* @author
*   sumanth
* @param
*   none
* @return
*   roles
************************************************/
void DisplayModel::updateRoles()
{
    QVector<int> role;

    role.push_back(ShowButtonRole);
    role.push_back(EnableButtonRole);
    role.push_back(ButtonTextRole);

    emit dataChanged(createIndex(0,0), createIndex(m_DataCount - 1, 0), role);
}

/***********************************************//*!
* @brief
*   DisplayModel::setButtonDataInfo
* @par
*   To update the Visual info of button.
* @author
*   sumanth
* @param
*   bVisble
* @return
*   none
************************************************/
void DisplayModel::setButtonDataInfo(bool bVisble)
{
    if(bVisble)
    {
        m_ButtonData.bShowButton = true;
        m_ButtonData.bEnableButton = true;
        m_ButtonData.sButtonText = "Confirm";
    }
    else
    {
        m_ButtonData.bShowButton = false;
        m_ButtonData.bEnableButton = false;
        m_ButtonData.sButtonText = "";
    }

    updateRoles();
}

/***********************************************//*!
* @brief
*   DisplayModel::createInstructionList
* @par
*   To create instruction list.
* @author
*   sumanth
* @param
*   none
* @return
*   none
************************************************/
void DisplayModel::createInstructionList()
{
    m_InstructionsList.clear();

    m_InstructionsList << "Welcome to demo version"
                       << "Follow the steps always"
                       << "Click confirm";

    beginResetModel();
    endResetModel();
}
