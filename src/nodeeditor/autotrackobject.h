#ifndef AUTOTRACKOBJECT_H
#define AUTOTRACKOBJECT_H

#include <QObject>
#include <nodes/NodeDataModel>
#include "analyzer/graphdataconnector.h"
#include <QtConcurrent/QtConcurrent>

//data types
#include "DataTypes/videographdata.h"
#include "DataTypes/detectionboxesdata.h"

#include <QLabel>
#include <QGridLayout>
#include <QLineEdit>
#include <QRegExpValidator>

using QtNodes::PortType;
using QtNodes::PortIndex;
using QtNodes::NodeData;
using QtNodes::NodeDataType;
using QtNodes::NodeDataModel;
using QtNodes::NodeValidationState;

class AutoTrackObject : public NodeDataModel{
    Q_OBJECT
public:
    AutoTrackObject();
    ~AutoTrackObject(){}


    QString caption() const override{
        return QStringLiteral("Object Tracking");
    }

    bool captionVisible(){
        return false;
    }

    QString name()const override
    {
        return QStringLiteral("Object Tracking");
    }

public:

    unsigned int nPorts(PortType PortType) const override;
    NodeDataType dataType(PortType portType, PortIndex portIndex) const override;
    std::shared_ptr<NodeData> outData(PortIndex port) override;
    void setInData(std::shared_ptr<NodeData>, int) override;

    NodeValidationState validationState() const override;
    QString validationMessage() const override;
    bool resizable() const override {return false;}


private:
    NodeValidationState modelValidationState = NodeValidationState::Warning;
    QString modelValidationError = QStringLiteral("Missing or incorrect inputs");

    QJsonObject save() const override;
    virtual void restore(QJsonObject const &) override;


public slots:
    void processData() override;
    void preCheck() override;

    void ShowContextMenu(const QPoint &pos) override;
    void activate(){active = true;preCheck();window->setStyleSheet("");}
    void deactivate(){active = false;window->setStyleSheet("background-color:rgb(200,200,200);");}

public: //multithread

    void multiThreadedProcess();

    QFuture<void> funct;
    QFutureWatcher<void> functWatcher;
    QLabel *progressBar;
public slots:
    void multiThreadedFinished();

private:    //port values
    std::shared_ptr<VideoGraphData> videoIn;
    std::shared_ptr<DetectionBoxesData> objectsOut;

private: //UI
    QGridLayout* layout;
    QLabel* rangeMaxLabel;
    QLabel* rangeMinLabel;
    QLineEdit* rangeMaxInput;
    QLineEdit* rangeMinInput;

    QDoubleValidator* doublepos;

private: //locals
    int MaxNumObjects = 50;
    int MinObjectArea = (FrameHeight * FrameWidth) / rangeMin;
    int MaxObjectArea = (FrameHeight * FrameWidth) / rangeMax;
    int FrameWidth = 640;
    int FrameHeight = 480;

    double rangeMax = 1.5;
    double rangeMin = 20.0;

    bool found;

};

#endif // AUTOTRACKOBJECT_H
