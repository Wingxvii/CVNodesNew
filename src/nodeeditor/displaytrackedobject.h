#ifndef DISPLAYTRACKEDOBJECT_H
#define DISPLAYTRACKEDOBJECT_H



#include <QObject>

#include <QtCore/QObject>
#include <nodes/NodeDataModel>
#include "analyzer/graphdataconnector.h"
#include <QtConcurrent/QtConcurrent>

//data types
#include "DataTypes/videographdata.h"
#include "DataTypes/DetectionBoxesData.h"

//QT widgets
#include <QLabel>
#include <QLineEdit>
#include <QGridLayout>
#include <QRegExpValidator>
#include <QListWidget>


#include "opencv2/objdetect.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"

using QtNodes::PortType;
using QtNodes::PortIndex;
using QtNodes::NodeData;
using QtNodes::NodeDataType;
using QtNodes::NodeDataModel;
using QtNodes::NodeValidationState;


class DisplayTrackedObject : public NodeDataModel
{   Q_OBJECT

public:
    DisplayTrackedObject();
    virtual ~DisplayTrackedObject(){};


    QString caption() const override{
        return QStringLiteral("Display Tracked Object");
    }
    bool captionVisible(){
        return false;
    }
    QString name()const override
    {
        return QStringLiteral("Display Tracked Object");
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
    //iterates throught the video, saving frames to a image vector based on parameters
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

private: //ports
    std::shared_ptr<VideoGraphData> videoIn;
    std::shared_ptr<DetectionBoxesData> dataIn;

    std::shared_ptr<VideoGraphData> videoOut;

private: //locals
    int frameHeight = 0;
    int frameWidth = 0;

private: //UI
    QGridLayout *layout;

};

#endif // DISPLAYTRACKEDOBJECT_H
