#ifndef DISPLAYMODEL_H
#define DISPLAYMODEL_H

#include <QAbstractListModel>

typedef struct ButtonData{
    bool bShowButton;
    bool bEnableButton;
    QString sButtonText;
}ButtonData;

class DisplayModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum DataRoles {
        InstructionRole = Qt::UserRole + 1,
        LabelRole,
        ShowButtonRole,
        EnableButtonRole,
        ButtonTextRole
    };
    static DisplayModel *getInstance();
    ~DisplayModel();

    int rowCount(const QModelIndex &parent = QModelIndex()) const;
    QVariant data(const QModelIndex &Index, int role = Qt::DisplayRole) const;

    void updateRoles();
    void setButtonDataInfo(bool bVisble);
    void createInstructionList();


protected:
    QHash<int, QByteArray> roleNames() const;

private:
    DisplayModel(QObject *parent = nullptr);

    int m_DataCount;
    QStringList m_InstructionsList;
    ButtonData m_ButtonData;
};

#endif // DISPLAYMODEL_H
