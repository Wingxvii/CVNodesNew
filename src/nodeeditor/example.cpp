#include "example.h"

#include "Example.h"

//opencv
#include "opencv2\core.hpp"
#include "opencv2\imgcodecs.hpp"
#include "opencv2\imgproc.hpp"
#include "opencv2\highgui.hpp"
#include "opencv2\calib3d.hpp"

Example::Example(){
    window = new QWidget;
    layout = new QGridLayout;

    progressBar = new QLabel("Inactive");

    layout->addWidget(progressBar);
    window->setLayout(layout);

    connect(&functWatcher, SIGNAL(finished()), this, SLOT(multiThreadedFinished()));

    buildContextWindow();
}

unsigned int Example::nPorts(QtNodes::PortType portType)const
{
    unsigned int result = 2;

    switch(portType){
    case PortType::In:
        result = 2;
        break;
    case PortType::Out:
        result = 2;
        break;
    default:
        break;
    }
    return result;

}

std::shared_ptr<NodeData> Example::outData(PortIndex port){
    switch(port){
    case 0:
            return cameraMat;
        break;
    case 1:
        return distanceCoeff;
        break;
    }
    return NULL;

}

void Example::setInData(std::shared_ptr<NodeData> data, int location){

    switch(location){
    case 0:
    pointsIn = std::dynamic_pointer_cast<PointsData>(data);

        if(pointsIn){
            modelValidationState = NodeValidationState::Valid;
            modelValidationError = QString();
            //data was found
            preCheck();
        }
       else{
          modelValidationState = NodeValidationState::Warning;
          modelValidationError = QStringLiteral("Missing or incorrect inputs");
          LOG_JOHN() << "Points data was not found";
        }
    break;
    case 1:
         calibDataIn = std::dynamic_pointer_cast<CalibData>(data);

            if(pointsIn){
                modelValidationState = NodeValidationState::Valid;
                modelValidationError = QString();
                //data was found
                preCheck();

            }
           else{
              modelValidationState = NodeValidationState::Warning;
              modelValidationError = QStringLiteral("Missing or incorrect inputs");
              LOG_JOHN() << "Example data was not found";
            }
        break;

    }
}

NodeDataType Example::dataType(PortType portType, PortIndex portIndex) const
{
    if(portType == PortType::In){
        if(portIndex == 0){
            return PointsData().type();
        }else{
            return CalibData().type();
        }
    }
    return ImageData().type();
}

NodeValidationState Example::validationState() const
{
    return modelValidationState;
}

QString Example::validationMessage() const
{
    return modelValidationError;
}

void Example::processData(){

    //setup progress bar parameters
    progressBar->setText("Processing...");

    funct = QtConcurrent::run(this, &Example::multiThreadedProcess);
    functWatcher.setFuture(funct);

}

void Example::preCheck()
{
    if(pointsIn && pointsIn->isReady && calibDataIn && calibDataIn->isReady && active){
        processData();
    }else{
        if(cameraMat){cameraMat->unready();}
        if(distanceCoeff){distanceCoeff->unready();}
    }
}


void Example::ShowContextMenu(const QPoint &pos)
{
    QMenu contextMenu(tr("Context menu"));

    QAction activateAction("Activate", this);
    QAction deactivateAction("Deactivate", this);

    connect(&activateAction, SIGNAL(triggered()), this, SLOT(activate()));
    connect(&deactivateAction, SIGNAL(triggered()), this, SLOT(deactivate()));
    contextMenu.addAction(&activateAction);
    contextMenu.addAction(&deactivateAction);

    contextMenu.exec(window->mapToGlobal(pos));
}

void Example::multiThreadedProcess()
{
    std::vector<std::vector<cv::Point3f>> worldSpaceCornerPoints(1);

    cameraMat = std::make_shared<ImageData>();
    distanceCoeff = std::make_shared<ImageData>();

    cv::Mat cameraMatData;
    cv::Mat distanceCoeffData;

    for (int i = 0; i < calibDataIn->sizeData().height; i++) {
        for (int j = 0; j < calibDataIn->sizeData().width; j++) {
            worldSpaceCornerPoints[0].push_back(cv::Point3f(j * calibDataIn->lengthData(), i*calibDataIn->lengthData(), 0.0f));
        }
    }

    worldSpaceCornerPoints.resize(pointsIn->data().size(), worldSpaceCornerPoints[0]);

    std::vector<cv::Mat> rVectors, tVectors;
    distanceCoeffData = cv::Mat::zeros(8,1,CV_64F);


    cameraMat->_image = cameraMatData;
    distanceCoeff->_image = distanceCoeffData;
    LOG_JOHN() << "Example Sucessful";

}

void Example::multiThreadedFinished()
{
    progressBar->setText("Finished");
    cameraMat->ready();
    distanceCoeff->ready();
    emit dataUpdated(0);
    emit dataUpdated(1);
}

