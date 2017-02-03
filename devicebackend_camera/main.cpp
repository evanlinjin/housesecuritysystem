#include <QCoreApplication>
#include <QCamera>
#include <QCameraInfo>
#include <QCameraImageCapture>
#include <QEventLoop>
#include <QDebug>

#include <iostream>
#include <string>

#include "imagehandler.h"
#include "donemanager.h"

bool isDone = false;

void setDone() {
    isDone = true;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    ImageHandler* handle = new ImageHandler();
    DoneManager* doner = new DoneManager();

    QObject::connect(handle, SIGNAL(captureDone()),
                     doner, SLOT(setDone()));

//    while (doner->getDone() == false) {
        handle->beginCapture();
//    }

    return a.exec();
}
