CONFIG   += link_prl

CONFIG   += qwt

QT       += widgets opengl xml network printsupport qml quick sql webkitwidgets
QT       += multimedia websockets quickwidgets
QT       += qml-private core-private quick-private gui-private
QT       += concurrent

TARGET = shotcut
TEMPLATE = app

win32:DEFINES += QT_STATIC

SOURCES += main.cpp\
    mainwindow.cpp \
    controllers/filtercontroller.cpp \
    widgets/plasmawidget.cpp \
    widgets/lissajouswidget.cpp \
    widgets/isingwidget.cpp \
    widgets/video4linuxwidget.cpp \
    widgets/colorproducerwidget.cpp \
    widgets/decklinkproducerwidget.cpp \
    widgets/networkproducerwidget.cpp \
    widgets/colorbarswidget.cpp \
    widgets/countproducerwidget.cpp \
    widgets/noisewidget.cpp \
    widgets/pulseaudiowidget.cpp \
    widgets/jackproducerwidget.cpp \
    widgets/toneproducerwidget.cpp \
    widgets/x11grabwidget.cpp \
    player.cpp \
    widgets/servicepresetwidget.cpp \
    widgets/avformatproducerwidget.cpp \
    widgets/imageproducerwidget.cpp \
    widgets/timespinbox.cpp \
    widgets/audiometerwidget.cpp \
    docks/recentdock.cpp \
    docks/encodedock.cpp \
    dialogs/addencodepresetdialog.cpp \
    docks/jobsdock.cpp \
    dialogs/textviewerdialog.cpp \
    models/playlistmodel.cpp \
    docks/playlistdock.cpp \
    dialogs/durationdialog.cpp \
    mvcp/qconsole.cpp \
    mvcp/mvcp_socket.cpp \
    mvcp/meltedclipsmodel.cpp \
    mvcp/meltedunitsmodel.cpp \
    mvcp/mvcpthread.cpp \
    mvcp/meltedplaylistmodel.cpp \
    mvcp/meltedplaylistdock.cpp \
    mvcp/meltedserverdock.cpp \
    widgets/colorwheel.cpp \
    models/attachedfiltersmodel.cpp \
    models/metadatamodel.cpp \
    docks/filtersdock.cpp \
    dialogs/customprofiledialog.cpp \
    qmltypes/colorpickeritem.cpp \
    qmltypes/colorwheelitem.cpp \
    qmltypes/qmlapplication.cpp \
    qmltypes/qmlfile.cpp \
    qmltypes/qmlfilter.cpp \
    qmltypes/qmlhtmleditor.cpp \
    qmltypes/qmlmetadata.cpp \
    qmltypes/timelineitems.cpp \
    qmltypes/qmlprofile.cpp \
    htmleditor/htmleditor.cpp \
    htmleditor/highlighter.cpp \
    settings.cpp \
    widgets/lineeditclear.cpp \
    widgets/webvfxproducer.cpp \
    widgets/gltestwidget.cpp \
    models/multitrackmodel.cpp \
    docks/timelinedock.cpp \
    qmltypes/qmlutilities.cpp \
    qmltypes/qmlview.cpp \
    qmltypes/thumbnailprovider.cpp \
    commands/timelinecommands.cpp \
    util.cpp \
    widgets/lumamixtransition.cpp \
    widgets/directshowvideowidget.cpp \
    jobs/abstractjob.cpp \
    jobs/meltjob.cpp \
    jobs/encodejob.cpp \
    jobs/videoqualityjob.cpp \
    commands/playlistcommands.cpp \
    docks/scopedock.cpp \
    controllers/scopecontroller.cpp \
    widgets/scopes/scopewidget.cpp \
    widgets/scopes/audioloudnessscopewidget.cpp \
    widgets/scopes/audiopeakmeterscopewidget.cpp \
    widgets/scopes/audiospectrumscopewidget.cpp \
    widgets/scopes/audiowaveformscopewidget.cpp \
    widgets/scopes/videowaveformscopewidget.cpp \
    sharedframe.cpp \
    widgets/audioscale.cpp \
    widgets/playlisttable.cpp \
    widgets/playlisticonview.cpp \
    commands/undohelper.cpp \
    models/audiolevelstask.cpp \
    widgets/avfoundationproducerwidget.cpp \
    widgets/gdigrabwidget.cpp \
    widgets/trackpropertieswidget.cpp \
    widgets/timelinepropertieswidget.cpp \
    jobs/ffprobejob.cpp \
    jobs/ffmpegjob.cpp \
    dialogs/unlinkedfilesdialog.cpp \
    dialogs/transcodedialog.cpp \
    docks/keyframesdock.cpp \
    qmltypes/qmlproducer.cpp \
    models/keyframesmodel.cpp \
    events.cpp \
    dialogs/blacklist.cpp \
    dialogs/filterlist.cpp \
    analyzer/sensorwindow.cpp \
    analyzer/filternode.cpp \
    analyzer/sensormanager.cpp \
    analyzer/scrubeventmanager.cpp \
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
    nodeeditor/outputdisplaymodel.cpp \
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
    controllers/filtercontroller.h \
    widgets/plasmawidget.h \
    widgets/lissajouswidget.h \
    widgets/isingwidget.h \
    widgets/video4linuxwidget.h \
    widgets/colorproducerwidget.h \
    widgets/decklinkproducerwidget.h \
    widgets/networkproducerwidget.h \
    widgets/colorbarswidget.h \
    widgets/countproducerwidget.h \
    widgets/noisewidget.h \
    widgets/pulseaudiowidget.h \
    widgets/jackproducerwidget.h \
    widgets/toneproducerwidget.h \
    widgets/x11grabwidget.h \
    player.h \
    widgets/servicepresetwidget.h \
    widgets/avformatproducerwidget.h \
    widgets/imageproducerwidget.h \
    widgets/timespinbox.h \
    widgets/iecscale.h \
    widgets/audiometerwidget.h \
    docks/recentdock.h \
    docks/encodedock.h \
    dialogs/addencodepresetdialog.h \
    docks/jobsdock.h \
    dialogs/textviewerdialog.h \
    models/playlistmodel.h \
    docks/playlistdock.h \
    dialogs/durationdialog.h \
    mvcp/qconsole.h \
    mvcp/meltedclipsmodel.h \
    mvcp/meltedunitsmodel.h \
    mvcp/mvcpthread.h \
    mvcp/meltedplaylistmodel.h \
    mvcp/meltedplaylistdock.h \
    mvcp/meltedserverdock.h \
    transportcontrol.h \
    widgets/colorwheel.h \
    models/attachedfiltersmodel.h \
    models/metadatamodel.h \
    docks/filtersdock.h \
    dialogs/customprofiledialog.h \
    qmltypes/colorpickeritem.h \
    qmltypes/colorwheelitem.h \
    qmltypes/qmlapplication.h \
    qmltypes/qmlfile.h \
    qmltypes/qmlfilter.h \
    qmltypes/qmlhtmleditor.h \
    qmltypes/qmlmetadata.h \
    qmltypes/timelineitems.h \
    qmltypes/qmlprofile.h \
    htmleditor/htmleditor.h \
    htmleditor/highlighter.h \
    settings.h \
    widgets/lineeditclear.h \
    widgets/webvfxproducer.h \
    widgets/gltestwidget.h \
    models/multitrackmodel.h \
    docks/timelinedock.h \
    qmltypes/qmlutilities.h \
    qmltypes/qmlview.h \
    qmltypes/thumbnailprovider.h \
    commands/timelinecommands.h \
    util.h \
    widgets/lumamixtransition.h \
    widgets/directshowvideowidget.h \
    jobs/abstractjob.h \
    jobs/meltjob.h \
    jobs/encodejob.h \
    jobs/videoqualityjob.h \
    commands/playlistcommands.h \
    docks/scopedock.h \
    controllers/scopecontroller.h \
    widgets/scopes/scopewidget.h \
    widgets/scopes/audioloudnessscopewidget.h \
    widgets/scopes/audiopeakmeterscopewidget.h \
    widgets/scopes/audiospectrumscopewidget.h \
    widgets/scopes/audiowaveformscopewidget.h \
    widgets/scopes/videowaveformscopewidget.h \
    sharedframe.h \
    widgets/audioscale.h \
    widgets/playlisttable.h \
    widgets/playlisticonview.h \
    commands/undohelper.h \
    models/audiolevelstask.h \
    shotcut_mlt_properties.h \
    widgets/avfoundationproducerwidget.h \
    widgets/gdigrabwidget.h \
    widgets/trackpropertieswidget.h \
    widgets/timelinepropertieswidget.h \
    jobs/ffprobejob.h \
    jobs/ffmpegjob.h \
    dialogs/unlinkedfilesdialog.h \
    dialogs/transcodedialog.h \
    docks/keyframesdock.h \
    qmltypes/qmlproducer.h \
    models/keyframesmodel.h \
    events.h \
    dialogs/blacklist.h \
    dialogs/filterlist.h \
    analyzer/sensorwindow.h \
    analyzer/filternode.h \
    analyzer/scrubeventmanager.h \
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
    nodeeditor/dynamic_framework/Export.hpp \
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
    nodeeditor/dynamic_framework/QStringStdHash.hpp \
    nodeeditor/dynamic_framework/QUuidStdHash.hpp \
    nodeeditor/dynamic_framework/Serializable.hpp \
    nodeeditor/dynamic_framework/Style.hpp \
    nodeeditor/dynamic_framework/StyleCollection.hpp \
    nodeeditor/dynamic_framework/TypeConverter.hpp \
    analyzer/cvPlayer.h \
    analyzer/linkmanager.h \
    nodeeditor/linkin.h \
    nodeeditor/linkout.h \
    scripter.h \
    nodeeditor/debuggetcorners.h \
    analyzer/jsbuilder.h \
    analyzer/sensormanager.h \
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
    nodeeditor/outputdisplaymodel.h \
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
    nodeeditor/emotionkeyframer.h



FORMS    += \
    widgets/plasmawidget.ui \
    widgets/lissajouswidget.ui \
    widgets/isingwidget.ui \
    widgets/video4linuxwidget.ui \
    widgets/colorproducerwidget.ui \
    widgets/decklinkproducerwidget.ui \
    widgets/networkproducerwidget.ui \
    widgets/colorbarswidget.ui \
    widgets/countproducerwidget.ui \
    widgets/noisewidget.ui \
    widgets/pulseaudiowidget.ui \
    widgets/jackproducerwidget.ui \
    widgets/toneproducerwidget.ui \
    widgets/x11grabwidget.ui \
    widgets/servicepresetwidget.ui \
    widgets/avformatproducerwidget.ui \
    widgets/imageproducerwidget.ui \
    docks/recentdock.ui \
    docks/encodedock.ui \
    dialogs/addencodepresetdialog.ui \
    docks/jobsdock.ui \
    dialogs/textviewerdialog.ui \
    docks/playlistdock.ui \
    dialogs/durationdialog.ui \
    mvcp/meltedserverdock.ui \
    mvcp/meltedplaylistdock.ui \
    dialogs/customprofiledialog.ui \
    htmleditor/htmleditor.ui \
    htmleditor/inserthtmldialog.ui \
    widgets/webvfxproducer.ui \
    docks/timelinedock.ui \
    widgets/lumamixtransition.ui \
    widgets/directshowvideowidget.ui \
    widgets/avfoundationproducerwidget.ui \
    widgets/gdigrabwidget.ui \
    widgets/trackpropertieswidget.ui \
    widgets/timelinepropertieswidget.ui \
    dialogs/unlinkedfilesdialog.ui \
    dialogs/transcodedialog.ui \
    mainwindow.ui

RESOURCES += \
    ../icons/resources.qrc \
    ../other-resources.qrc

OTHER_FILES += \
    ../COPYING \
    shotcut.rc \
    ../scripts/build-shotcut.sh \
    ../icons/shotcut.icns \
    ../scripts/shotcut.nsi \
    ../Info.plist \
    ../icons/dark/index.theme \
    ../icons/light/index.theme \
    ../snap/snapcraft.yaml \
    ../snap/setup/gui/shotcut.desktop \
    ../shotcut.appdata.xml

TRANSLATIONS += \
    ../translations/shotcut_ca.ts \
    ../translations/shotcut_cs.ts \
    ../translations/shotcut_da.ts \
    ../translations/shotcut_de.ts \
    ../translations/shotcut_el.ts \
    ../translations/shotcut_en.ts \
    ../translations/shotcut_es.ts \
    ../translations/shotcut_et.ts \
    ../translations/shotcut_fi.ts \
    ../translations/shotcut_fr.ts \
    ../translations/shotcut_gd.ts \
    ../translations/shotcut_hu.ts \
    ../translations/shotcut_it.ts \
    ../translations/shotcut_ja.ts \
    ../translations/shotcut_nb.ts \
    ../translations/shotcut_ne.ts \
    ../translations/shotcut_nl.ts \
    ../translations/shotcut_oc.ts \
    ../translations/shotcut_pl.ts \
    ../translations/shotcut_pt_BR.ts \
    ../translations/shotcut_pt_PT.ts \
    ../translations/shotcut_ru.ts \
    ../translations/shotcut_sk.ts \
    ../translations/shotcut_sl.ts \
    ../translations/shotcut_tr.ts \
    ../translations/shotcut_uk.ts \
    ../translations/shotcut_zh_CN.ts \
    ../translations/shotcut_zh_TW.ts

#node editor includes


DEFINES += NODE_EDITOR_SHARED
INCLUDEPATH += ../CuteLogger/include ../mvcp
INCLUDEPATH += "$$PWD/../nodeeditor/include"
INCLUDEPATH += "$$PWD/../nodeeditor"
INCLUDEPATH += "$$PWD/../opencv"
INCLUDEPATH += "$$PWD/../opencv/opencv2"

CONFIG(debug, debug|release) {
LIBS += "$$PWD/../opencv/bin/libopencv_aruco411d.dll"
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
LIBS += "$$PWD/../opencv/bin/libopencv_aruco411.dll"
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

INCLUDEPATH += C:/qwt-6.1.4/include

#LIBS += "$$PWD/../nodeeditor/NodeEditor.dll"

debug_and_release {
    build_pass:CONFIG(debug, debug|release) {
        LIBS += -L../CuteLogger/debug -L../mvcp/debug
    } else {
        LIBS += -L../CuteLogger/release -L../mvcp/release
    }
} else {
    LIBS += -L../CuteLogger -L../mvcp
}
LIBS += -lCuteLogger -lmvcp -lpthread

isEmpty(SHOTCUT_VERSION) {
    !win32:SHOTCUT_VERSION = $$system(date "+%y.%m.%d")
     win32:SHOTCUT_VERSION = adhoc
}
DEFINES += SHOTCUT_VERSION=\\\"$$SHOTCUT_VERSION\\\"
VERSION = $$SHOTCUT_VERSION


mac {
    TARGET = Shotcut
    ICON = ../icons/shotcut.icns
    QMAKE_INFO_PLIST = ../Info.plist
    INCLUDEPATH += $$[QT_INSTALL_HEADERS]

    # QMake from Qt 5.1.0 on OSX is messing with the environment in which it runs
    # pkg-config such that the PKG_CONFIG_PATH env var is not set.
    isEmpty(MLT_PREFIX) {
        MLT_PREFIX = /opt/local
    }
    INCLUDEPATH += $$MLT_PREFIX/include/mlt++
    INCLUDEPATH += $$MLT_PREFIX/include/mlt
    LIBS += -L$$MLT_PREFIX/lib -lmlt++ -lmlt
}
win32 {
    CONFIG += windows rtti
    isEmpty(MLT_PATH) {
        message("MLT_PATH not set; using ..\\..\\... You can change this with 'qmake MLT_PATH=...'")
        MLT_PATH = ..\\..\\..
    }
    INCLUDEPATH += $$MLT_PATH\\include\\mlt++ $$MLT_PATH\\include\\mlt
    LIBS += -L$$MLT_PATH\\lib -lmlt++ -lmlt -lopengl32
    CONFIG(debug, debug|release) {
        INCLUDEPATH += $$PWD/../drmingw/include
        LIBS += -L$$PWD/../drmingw/x64/lib -lexchndl
    }
    RC_FILE = shotcut.rc
}
unix:!mac {
    QT += x11extras
    CONFIG += link_pkgconfig
    PKGCONFIG += mlt++
    LIBS += -lX11
}

unix:!mac:isEmpty(PREFIX) {
    message("Install PREFIX not set; using /usr/local. You can change this with 'qmake PREFIX=...'")
    PREFIX = /usr/local
}
win32:isEmpty(PREFIX) {
    message("Install PREFIX not set; using C:\\Projects\\Shotcut. You can change this with 'qmake PREFIX=...'")
    PREFIX = C:\\Projects\\Shotcut
}
unix:target.path = $$PREFIX/bin
win32:target.path = $$PREFIX
INSTALLS += target

qmlfiles.files = $$PWD/qml
qmlfiles.path = $$PREFIX/share/shotcut
INSTALLS += qmlfiles

unix:!mac {
    metainfo.files = $$PWD/../shotcut.appdata.xml
    metainfo.path = $$PREFIX/share/metainfo
    INSTALLS += qmlfiles
}

DISTFILES += \
    qml/views/sensors/sensorview.qml
