#include "mainwindow.h"
#include <Logger.h>
#include <QResizeEvent>
#include "analyzer/linkmanager.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    //ui
    ui->setupUi(this);
    setupLayout();

    //West
    setupLinker();

    //Central
    setupEditor();

    //East
    setUpImageDisplay();
    setUpVideo();

    //South
    setupConsole();

    //North

    //Not Aligned
    setUpDataSaver();

    createActions();

    refreshSize = 200;


}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::resizeEvent(QResizeEvent *e)
{
    LOG_CAMPBELL() << "resizing";


    if (std::abs(e->size().width() - currentSize.width()) > refreshSize
            || std::abs(e->size().height() - currentSize.height()) > refreshSize )
    {
        QSize temp(std::abs(e->size().width() - currentSize.width()),
                   std::abs(e->size().height() - currentSize.height()));

        LOG_CAMPBELL() << QString::number(temp.height());
        LOG_CAMPBELL() << QString::number(temp.width());

        currentSize = e->size();
    }
}


void MainWindow::createActions()
{
    fileNewAction = new QAction(tr("&New"), this);
    fileNewAction->setShortcut(QKeySequence::New);
    fileNewAction->setStatusTip("Create a new file");
    connect(fileNewAction, SIGNAL(triggered()), this, SLOT(newSlot()));

    fileOpenAction = new QAction(tr("&Open..."), this);
    fileOpenAction->setShortcut(QKeySequence::Open);
    fileOpenAction->setStatusTip("Open an existing file");
    connect(fileOpenAction, SIGNAL(triggered()), this, SLOT(openSlot()));

    filePlaceAction = new QAction(tr("&Place"), this);
    filePlaceAction->setStatusTip("Place an existing file");
    connect(filePlaceAction, SIGNAL(triggered()), this, SLOT(placeSlot()));

    fileSaveAction = new QAction(tr("&Save"), this);
    fileSaveAction->setShortcut(QKeySequence::Save);
    fileSaveAction->setStatusTip("Save the node setup to disk");
    connect(fileSaveAction, SIGNAL(triggered()), this, SLOT(saveSlot()));

    fileClearAction = new QAction(tr("&Clear"), this);
    fileClearAction->setStatusTip("Clear selected file");
    connect(fileClearAction, SIGNAL(triggered()), this, SLOT(clearSlot()));

    fileCloseAction = new QAction(tr("&Close"), this);
    fileCloseAction->setStatusTip("Close selected file without saving");
    connect(fileCloseAction, SIGNAL(triggered()), this, SLOT(closeSlot()));

    //setup Window open actions
    connect(console->openAction, SIGNAL(triggered()), this, SLOT(consoleSlot()));
    connect(linker->openAction, SIGNAL(triggered()), this, SLOT(linkerSlot()));
    connect(imageDisplay->openAction, SIGNAL(triggered()), this, SLOT(imageDisplaySlot()));
    connect(videoWindow->openAction, SIGNAL(triggered()), this, SLOT(videoDisplaySlot()));
    //connect functionality from different childs
    connect(linker, SIGNAL(onActivate(QString, int)), saveWindow, SLOT(openSaveWindow(QString , int)));

    createMenus();
}

void MainWindow::createMenus()
{

    //file actions
    ui->menuFIle->addAction(fileNewAction);
    ui->menuFIle->addAction(fileOpenAction);
    ui->menuFIle->addAction(filePlaceAction);
    ui->menuFIle->addAction(fileSaveAction);
    ui->menuFIle->addAction(fileClearAction);
    ui->menuFIle->addAction(fileCloseAction);
    ui->menuFIle->addSeparator();

    //window open/close
    ui->menuWindow->addAction(console->openAction);
    ui->menuWindow->addAction(linker->openAction);
    ui->menuWindow->addAction(imageDisplay->openAction);
    ui->menuWindow->addAction(videoWindow->openAction);
    ui->menuWindow->addSeparator();

    //linker actions
    ui->menuLink->addAction(saveWindow->openAction);

}

void MainWindow::setupLayout()
{
    northWidget = new QWidget;
    northLayout = new QHBoxLayout();
    northWidget->setLayout(northLayout);

    southWidget = new QWidget;
    southLayout = new QHBoxLayout();
    southWidget->setLayout(southLayout);

    centerWidget = new QWidget;
    centerLayout = new QHBoxLayout();
    centerWidget->setLayout(centerLayout);

    ui->MainLayout->addWidget(northWidget,1,1);
    ui->MainLayout->addWidget(southWidget,3,1);
    ui->MainLayout->addWidget(centerWidget,2,1);

}

void MainWindow::setupEditor()
{
    nodeEditorWindow = new QTabWidget();
    centerLayout->addWidget(nodeEditorWindow);

}

void MainWindow::setupConsole()
{
    console = new ConsoleWindow();
    southLayout->addWidget(console->window);
}

void MainWindow::setupLinker()
{
    linker = new LinkerWindow();
    centerLayout->addWidget(linker->window);
}

void MainWindow::setUpImageDisplay()
{
    imageDisplay = new ImageWindow();
    centerLayout->addWidget(imageDisplay->window);
}

void MainWindow::setUpVideo()
{
    videoWindow = new VideoWindow();
    centerLayout->addWidget(videoWindow->window);
}

void MainWindow::setUpDataSaver()
{
    saveWindow = new SaveData();

}

void MainWindow::newSlot()
{

    QString name = QInputDialog::getText(this, "Name File", "Input a name: ");

    //create the container
    NodeEditorContainer *container = new NodeEditorContainer();
    container->name = name;
    container->index = nodeWindowList.size()-1;
    container->editor = new FilterNode();

    //then add a tab
    nodeEditorWindow->addTab(container->editor, container->name);

    //and push it into the list
    nodeWindowList.push_back(*container);
}

void MainWindow::openSlot()
{

    //create the container
    NodeEditorContainer *container = new NodeEditorContainer();
    container->name = "Opening File...";
    container->index = nodeWindowList.size()-1;
    container->editor = new FilterNode();

    //then add a tab
    nodeEditorWindow->addTab(container->editor, container->name);

    //and push it into the list
    nodeWindowList.push_back(*container);

    nodeEditorWindow->setCurrentIndex(nodeWindowList.size()-1);
    nodeWindowList[nodeEditorWindow->currentIndex()].editor->scene->load();
    if(nodeWindowList[nodeEditorWindow->currentIndex()].editor->scene->currentFileName != ""){
    nodeEditorWindow->setTabText(nodeEditorWindow->currentIndex(),nodeWindowList[nodeEditorWindow->currentIndex()].editor->scene->currentFileName);
    }else{
        closeSlot();
    }

}

void MainWindow::saveSlot()
{
    nodeWindowList[nodeEditorWindow->currentIndex()].editor->scene->save();
    if(nodeWindowList[nodeEditorWindow->currentIndex()].editor->scene->currentFileName != ""){
        nodeEditorWindow->setTabText(nodeEditorWindow->currentIndex(),nodeWindowList[nodeEditorWindow->currentIndex()].editor->scene->currentFileName);
    }
}

void MainWindow::placeSlot()
{
    nodeWindowList[nodeEditorWindow->currentIndex()].editor->scene->place();
}

void MainWindow::clearSlot()
{
    nodeWindowList[nodeEditorWindow->currentIndex()].editor->scene->clearScene();
}

void MainWindow::closeSlot()
{
    nodeEditorWindow->removeTab(nodeEditorWindow->currentIndex());
    nodeWindowList.removeAt(nodeEditorWindow->currentIndex());
}

void MainWindow::consoleSlot()
{
    if(console->openAction->isChecked()){
        console->window->setVisible(true);
    }else{
        console->window->setVisible(false);
    }
}


void MainWindow::linkerSlot()
{
    if(linker->openAction->isChecked()){
        linker->window->setVisible(true);
    }else{
        linker->window->setVisible(false);
    }
}

void MainWindow::imageDisplaySlot()
{
    if(imageDisplay->openAction->isChecked()){
        imageDisplay->window->setVisible(true);
    }else{
        imageDisplay->window->setVisible(false);
    }
}

void MainWindow::videoDisplaySlot()
{
    if(videoWindow->openAction->isChecked()){
        videoWindow->window->setVisible(true);
    }else{
        videoWindow->window->setVisible(false);
    }

}
