#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "analyzer\filternode.h"
#include "logger.h"

#include <QGridLayout>
#include <QHBoxLayout>
#include <QTabWidget>
#include <QList>
#include <QActionGroup>

#include "analyzer\savedata.h"
#include "analyzer\consolewindow.h"
#include "analyzer\linkerwindow.h"
#include "analyzer\imagewindow.h"
#include "analyzer\videowindow.h"
#include "events.h"

namespace Ui {
class MainWindow;
}

//this contains one node editor file
struct NodeEditorContainer{
    FilterNode* editor;
    Events* events;
    QString name;
    QString fileName;
    int index;
};


class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    void resizeEvent( QResizeEvent *e );


private:
    Ui::MainWindow *ui;


private:
    QSize currentSize;
    int refreshSize;
    //menu bar items
    void createActions();
    void createMenus();

    QActionGroup *alignmentGroup;

    //file menu actions
    QAction* fileNewAction;
    QAction* fileOpenAction;
    QAction* fileSaveAction;
    QAction* filePlaceAction;
    QAction* fileClearAction;
    QAction* fileCloseAction;


    //cardinal layouts
    QWidget* northWidget, *southWidget, *centerWidget;
    QHBoxLayout* northLayout,* southLayout, *centerLayout;
    void setupLayout();

public: //windows

    //node editor data
    QTabWidget* nodeEditorWindow;

    //figure out why this is breaking it
    QList<NodeEditorContainer> nodeWindowList;

    void setupEditor();
    ConsoleWindow *console;
    void setupConsole();
    LinkerWindow *linker;
    void setupLinker();
    ImageWindow *imageDisplay;
    void setUpImageDisplay();
    VideoWindow *videoWindow;
    void setUpVideo();
    SaveData* saveWindow;
    void setUpDataSaver();


public slots:
    void newSlot();
    void openSlot();
    void saveSlot();
    void placeSlot();
    void clearSlot();
    void closeSlot();

    void consoleSlot();
    void linkerSlot();
    void imageDisplaySlot();
    void videoDisplaySlot();

};

#endif // MAINWINDOW_H
