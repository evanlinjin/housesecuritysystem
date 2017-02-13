#include <QCoreApplication>
#include <QCamera>
#include <QCameraInfo>
#include <QCameraImageCapture>
#include <QEventLoop>
#include <QDebug>

#include <iostream>
#include <string>

#include "imagehandler.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    ImageHandler* handle = new ImageHandler();

    handle->beginCapture();

    return a.exec();
}
