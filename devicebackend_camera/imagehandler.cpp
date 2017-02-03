#include "imagehandler.h"

ImageHandler::ImageHandler(QObject *parent) : QObject(parent)
{
    QList<QCameraInfo> cameras = QCameraInfo::availableCameras();

    std::cout << "Listing cameras ..." << std::endl;
    if (cameras.count() == 0) {
        std::cout << "No cameras detected." << std::endl;
        return;
    }

    for (int i = 0; i < cameras.count(); i++) {
        std::cout << " [" << i << "] " << cameras[i].deviceName().toStdString() << std::endl;
    }

    int cameraChoice;

    while (true) {
        std::cout << std::endl;
        std::cout << "What device would you like to use?" << std::endl
                  << "Please enter a number (0-" << cameras.count()-1 << ") : ";
        std::cin >> cameraChoice;

        if (cameraChoice >= 0 && cameraChoice < cameras.count()) {
            std::cout << "You picked: [" << cameraChoice << "] "
                      << cameras[cameraChoice].deviceName().toStdString() << std::endl;
            std::cout << "Connecting ..." << std::endl;
            break;

        }
        std::cout << "Please enter a valid number." << std::endl;
    }

    camera = new QCamera(cameras[cameraChoice], this);
    imageCapture = new QCameraImageCapture(camera, this);

    camera->setCaptureMode(QCamera::CaptureStillImage);
    cameraOn = false;

//    connect(imageCapture, SIGNAL(imageAvailable(int,QVideoFrame)),
//            this, SLOT(processAvailable(int,QVideoFrame)));
        connect(imageCapture, SIGNAL(imageCaptured(int,QImage)),
                this, SLOT(processCapture(int,QImage)));
    connect(imageCapture, SIGNAL(error(int,QCameraImageCapture::Error,QString)),
            this, SLOT(captureError(int,QCameraImageCapture::Error,QString)));
}

void ImageHandler::turnCameraOn()
{
    if (cameraOn == false) {
        camera->start();
        cameraOn = true;
    }
}

void ImageHandler::turnCameraOff()
{
    if (cameraOn == true) {
        camera->stop();
        cameraOn = false;
    }
}

void ImageHandler::beginCapture()
{
    turnCameraOn();
    //    camera->searchAndLock();
    //    connect(imageCapture, SIGNAL(readyForCaptureChanged(bool)), this, SLOT(doCapture(bool)));
    connect(imageCapture, SIGNAL(readyForCaptureChanged(bool)), &loop, SLOT(quit()));
    loop.exec();

    while (true) {
        imageCapture->capture();
        QTimer::singleShot(1000, &loop, SLOT(quit()));
        loop.exec();
    }

    //    camera->unlock();
}

//void ImageHandler::processAvailable(int id, QVideoFrame frame)
//{
//    qInfo() << "[FRAME AVALIABLE] id:" << id << ", frame:", frame.bits();

//    QImage::Format format = QVideoFrame::imageFormatFromPixelFormat(frame.pixelFormat());

//    QImage img(frame.bits(), frame.width(), frame.height(), frame.bytesPerLine(), format);
//    img.save(QString("~"), nullptr, 5);

//    emit captureDone();
//}

void ImageHandler::processCapture(int id, QImage img)
{
    qInfo() << "[IMAGE CAPTURED] id:" << id << ", img:" << img.bits();
    emit captureDone();
}

void ImageHandler::captureError(int id, QCameraImageCapture::Error e, QString msg)
{
    qInfo() << "[CAPTURE ERROR] id:" << id << ", error:" << e << ", msg:" << msg;
}
