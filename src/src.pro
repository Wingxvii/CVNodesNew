CONFIG   += link_prl

CONFIG   += qwt
CONFIG   += c++11

QT       += widgets opengl xml network printsupport quick sql
QT       += multimedia websockets quickwidgets
QT       += core-private quick-private gui-private
QT       += concurrent

TARGET = shotcut
TEMPLATE = app

win32:DEFINES += QT_STATIC

SOURCES += main.cpp\
    mainwindow.cpp \
    analyzer/filternode.cpp \
    nodeeditor/calibrate.cpp \
    nodeeditor/getcorners.cpp \
    nodeeditor/calibinfo.cpp \
    nodeeditor/frameiterator.cpp \
    nodeeditor/imagedisplay.cpp \
    nodeeditor/undistort.cpp \
    nodeeditor/autoframeiterator.cpp \
    nodeeditor/videosourcedatamodel.cpp \
    nodeeditor/videodisplay.cpp \
    nodeeditor/videooutputmodel.cpp \
    nodeeditor/dynamic_framework/Connection.cpp \
    nodeeditor/dynamic_framework/ConnectionBlurEffect.cpp \
    nodeeditor/dynamic_framework/ConnectionGeometry.cpp \
    nodeeditor/dynamic_framework/ConnectionGraphicsObject.cpp \
    nodeeditor/dynamic_framework/ConnectionPainter.cpp \
    nodeeditor/dynamic_framework/ConnectionState.cpp \
    nodeeditor/dynamic_framework/ConnectionStyle.cpp \
    nodeeditor/dynamic_framework/DataModelRegistry.cpp \
    nodeeditor/dynamic_framework/FlowScene.cpp \
    nodeeditor/dynamic_framework/FlowView.cpp \
    nodeeditor/dynamic_framework/FlowViewStyle.cpp \
    nodeeditor/dynamic_framework/Node.cpp \
    nodeeditor/dynamic_framework/NodeConnectionInteraction.cpp \
    nodeeditor/dynamic_framework/NodeDataModel.cpp \
    nodeeditor/dynamic_framework/NodeGeometry.cpp \
    nodeeditor/dynamic_framework/NodeGraphicsObject.cpp \
    nodeeditor/dynamic_framework/NodePainter.cpp \
    nodeeditor/dynamic_framework/NodeState.cpp \
    nodeeditor/dynamic_framework/NodeStyle.cpp \
    nodeeditor/dynamic_framework/Properties.cpp \
    nodeeditor/dynamic_framework/StyleCollection.cpp \
    analyzer/cvplayer.cpp \
    analyzer/linkmanager.cpp \
    nodeeditor/linkin.cpp \
    nodeeditor/linkout.cpp \
    nodeeditor/debuggetcorners.cpp \
    jsbuilder.cpp \
    analyzer/savedata.cpp \
    analyzer/consolewindow.cpp \
    analyzer/linkerwindow.cpp \
    analyzer/imagewindow.cpp \
    analyzer/videowindow.cpp \
    nodeeditor/convertcolor.cpp \
    nodeeditor/cascadedetect.cpp \
    nodeeditor/equalizehist.cpp \
    nodeeditor/erodeimage.cpp \
    nodeeditor/dilateimage.cpp \
    nodeeditor/colorthreshold.cpp \
    nodeeditor/autotrackobject.cpp \
    nodeeditor/displaytrackedobject.cpp \
    nodeeditor/videoobjectstats.cpp \
    nodeeditor/regionofintrest.cpp \
    nodeeditor/resizevideonode.cpp \
    nodeeditor/perspectiverectifynode.cpp \
    nodeeditor/videobinningstats.cpp \
    nodeeditor/autofindfeatures.cpp \
    nodeeditor/addfeature.cpp \
    nodeeditor/calculateopticalflow.cpp \
    nodeeditor/trackinglist.cpp \
    nodeeditor/pointdisplay.cpp \
    nodeeditor/rects2points.cpp \
    nodeeditor/points2rects.cpp \
    nodeeditor/extractpoints.cpp \
    nodeeditor/deepimageclassification.cpp \
    nodeeditor/displaydetection.cpp \
    nodeeditor/trainemotionmodels.cpp \
    nodeeditor/emotiondetection.cpp \
    nodeeditor/facecrop.cpp \
    nodeeditor/displayemotions.cpp \
    nodeeditor/graphemotion.cpp \
    nodeeditor/emotionkeyframer.cpp



HEADERS  += mainwindow.h \
    analyzer/filternode.h \
    nodeeditor/autoframeiterator.h \
    nodeeditor/calibinfo.h \
    nodeeditor/calibrate.h \
    nodeeditor/frameiterator.h \
    nodeeditor/getcorners.h \
    nodeeditor/imagedisplay.h \
    nodeeditor/undistort.h \
    nodeeditor/videodisplay.h \
    nodeeditor/videooutputmodel.h \
    nodeeditor/videosourcedatamodel.h \
    nodeeditor/DataTypes/calibdata.h \
    nodeeditor/DataTypes/imagedata.h \
    nodeeditor/DataTypes/pointdata.h \
    nodeeditor/DataTypes/pointsdata.h \
    nodeeditor/DataTypes/videographdata.h \
    nodeeditor/DataTypes/nodegraphdata.h \
    nodeeditor/dynamic_framework/Connection.hpp \
    nodeeditor/dynamic_framework/ConnectionBlurEffect.hpp \
    nodeeditor/dynamic_framework/ConnectionGeometry.hpp \
    nodeeditor/dynamic_framework/ConnectionGraphicsObject.hpp \
    nodeeditor/dynamic_framework/ConnectionPainter.hpp \
    nodeeditor/dynamic_framework/ConnectionState.hpp \
    nodeeditor/dynamic_framework/ConnectionStyle.hpp \
    nodeeditor/dynamic_framework/DataModelRegistry.hpp \
    nodeeditor/dynamic_framework/FlowScene.hpp \
    nodeeditor/dynamic_framework/FlowView.hpp \
    nodeeditor/dynamic_framework/FlowViewStyle.hpp \
    nodeeditor/dynamic_framework/memory.hpp \
    nodeeditor/dynamic_framework/Node.hpp \
    nodeeditor/dynamic_framework/NodeConnectionInteraction.hpp \
    nodeeditor/dynamic_framework/NodeData.hpp \
    nodeeditor/dynamic_framework/NodeDataModel.hpp \
    nodeeditor/dynamic_framework/NodeGeometry.hpp \
    nodeeditor/dynamic_framework/NodeGraphicsObject.hpp \
    nodeeditor/dynamic_framework/NodePainter.hpp \
    nodeeditor/dynamic_framework/NodePainterDelegate.hpp \
    nodeeditor/dynamic_framework/NodeState.hpp \
    nodeeditor/dynamic_framework/NodeStyle.hpp \
    nodeeditor/dynamic_framework/PortType.hpp \
    nodeeditor/dynamic_framework/Properties.hpp \
    nodeeditor/dynamic_framework/QUuidStdHash.hpp \
    nodeeditor/dynamic_framework/Serializable.hpp \
    nodeeditor/dynamic_framework/Style.hpp \
    nodeeditor/dynamic_framework/StyleCollection.hpp \
    nodeeditor/dynamic_framework/TypeConverter.hpp \
    analyzer/cvPlayer.h \
    analyzer/linkmanager.h \
    nodeeditor/linkin.h \
    nodeeditor/linkout.h \
    nodeeditor/debuggetcorners.h \
    analyzer/jsbuilder.h \
    analyzer/savedata.h \
    analyzer/consolewindow.h \
    analyzer/linkerwindow.h \
    analyzer/imagewindow.h \
    analyzer/videowindow.h \
    nodeeditor/convertcolor.h \
    nodeeditor/cascadedetect.h \
    nodeeditor/equalizehist.h \
    nodeeditor/DataTypes/detectionboxesdata.h \
    nodeeditor/erodeimage.h \
    nodeeditor/dilateimage.h \
    nodeeditor/colorthreshold.h \
    nodeeditor/autotrackobject.h \
    nodeeditor/displaytrackedobject.h \
    nodeeditor/videoobjectstats.h \
    nodeeditor/regionofintrest.h \
    nodeeditor/resizevideonode.h \
    nodeeditor/perspectiverectifynode.h \
    nodeeditor/videobinningstats.h \
    nodeeditor/autofindfeatures.h \
    nodeeditor/addfeature.h \
    nodeeditor/calculateopticalflow.h \
    nodeeditor/trackinglist.h \
    nodeeditor/pointdisplay.h \
    nodeeditor/rects2points.h \
    nodeeditor/points2rects.h \
    nodeeditor/extractpoints.h \
    nodeeditor/deepimageclassification.h \
    nodeeditor/displaydetection.h \
    nodeeditor/trainemotionmodels.h \
    nodeeditor/emotiondetection.h \
    nodeeditor/DataTypes/emotiondata.h \
    nodeeditor/facecrop.h \
    nodeeditor/displayemotions.h \
    nodeeditor/graphemotion.h \
    nodeeditor/emotionkeyframer.h \


FORMS    += \
    mainwindow.ui

RESOURCES += \
    ../icons/resources.qrc \
    ../other-resources.qrc

OTHER_FILES += \
    ../COPYING \

#node editor includes
DEFINES += NODE_EDITOR_SHARED
INCLUDEPATH += ../CuteLogger/include
INCLUDEPATH += "$$PWD/../nodeeditor/include"
INCLUDEPATH += "$$PWD/../nodeeditor"
INCLUDEPATH += "$$PWD/../opencv"
INCLUDEPATH += "$$PWD/../opencv/opencv2"

##qwt include
INCLUDEPATH += "$$PWD/../Qwt-6.1.4/include"


CONFIG(debug, debug|release) {
LIBS += "$$PWD/../Qwt-6.1.4/lib/qwtd.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_bgsegm411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_bioinspired411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_calib3d411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_ccalib411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_core411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_cvv411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_datasets411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_dnn_objdetect411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_dnn411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_dpm411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_face411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_features2d411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_flann411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_fuzzy411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_hfs411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_highgui411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_img_hash411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_imgcodecs411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_imgproc411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_line_descriptor411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_ml411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_objdetect411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_optflow411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_phase_unwrapping411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_photo411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_plot411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_reg411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_rgbd411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_saliency411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_shape411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_stereo411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_stitching411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_structured_light411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_superres411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_surface_matching411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_text411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_tracking411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_video411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_videoio411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_videostab411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_xfeatures2d411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_ximgproc411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_xobjdetect411d.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_xphoto411d.dll"
}else{
LIBS += "$$PWD/../Qwt-6.1.4/lib/qwt.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_bgsegm411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_bioinspired411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_calib3d411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_ccalib411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_core411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_cvv411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_datasets411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_dnn_objdetect411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_dnn411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_dpm411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_face411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_features2d411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_flann411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_fuzzy411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_hfs411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_highgui411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_img_hash411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_imgcodecs411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_imgproc411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_line_descriptor411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_ml411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_objdetect411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_optflow411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_phase_unwrapping411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_photo411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_plot411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_reg411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_rgbd411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_saliency411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_shape411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_stereo411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_stitching411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_structured_light411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_superres411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_surface_matching411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_text411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_tracking411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_video411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_videoio411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_videostab411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_xfeatures2d411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_ximgproc411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_xobjdetect411.dll"
LIBS += "$$PWD/../opencv/bin/libopencv_xphoto411.dll"
}

debug_and_release {
    build_pass:CONFIG(debug, debug|release) {
        LIBS += -L../CuteLogger/debug
    } else {
        LIBS += -L../CuteLogger/release
    }
} else {
    LIBS += -L../CuteLogger
}
LIBS += -lCuteLogger -lpthread

unix:!mac:isEmpty(PREFIX) {
    message("Install PREFIX not set; using /usr/local. You can change this with 'qmake PREFIX=...'")
    PREFIX = /usr/local
}
unix:target.path = $$PREFIX/bin
win32:target.path = $$PREFIX
INSTALLS += target
