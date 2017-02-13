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
    imageSurface = new ImageSurface(this);

    camera->setViewfinder(imageSurface);
    camera->setCaptureMode(QCamera::CaptureViewfinder);
    cameraOn = false;

    connect(camera, SIGNAL(statusChanged(QCamera::Status)), this, SLOT(getCameraInfo(QCamera::Status)));
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
}

void ImageHandler::getCameraInfo(QCamera::Status status)
{
    if (status != QCamera::ActiveStatus) return;

    supportedLockTypes = camera->supportedLocks();
    supportedFrameRateRanges = camera->supportedViewfinderFrameRateRanges();
    supportedPixelFormats = camera->supportedViewfinderPixelFormats();
    supportedResolutions = camera->supportedViewfinderResolutions();
    supportedSettings = camera->supportedViewfinderSettings();

    QString sfrrTemp;
    for (int i = 0; i < supportedFrameRateRanges.count(); i++) {
        sfrrTemp.append("(");
        sfrrTemp.append(QString::number(supportedFrameRateRanges.at(i).minimumFrameRate));
        sfrrTemp.append(", ");
        sfrrTemp.append(QString::number(supportedFrameRateRanges.at(i).maximumFrameRate));
        sfrrTemp.append(i < supportedFrameRateRanges.count()-1 ? "), " : ")");
    }

    QString ssTemp;
    for (int i = 0; i < supportedSettings.count(); i++) {
        ssTemp.append("(");
        ssTemp.append(QString::number(supportedSettings.at(i).maximumFrameRate()));
        ssTemp.append(", ");
        ssTemp.append(QString::number(supportedSettings.at(i).minimumFrameRate()));
        ssTemp.append(", ");
        ssTemp.append(QString::number(supportedSettings.at(i).pixelAspectRatio().height()));
        ssTemp.append(", ");
        ssTemp.append(QString::number(supportedSettings.at(i).pixelAspectRatio().width()));

        ssTemp.append(i < supportedSettings.count()-1 ? "), " : ")");
    }

    qInfo() << "SUPPORTED LOCKS:" << supportedLockTypes;
    qInfo() << "SUPPORTED FRAME RATES:" << sfrrTemp;
    qInfo() << "SUPPORTED PIXEL FORMATS:" << supportedPixelFormats;
    qInfo() << "SUPPORTED RESOLUTIONS:" << supportedResolutions;
    qInfo() << "SUPPORTED SETTINGS:" << ssTemp;
}

void ImageHandler::beginCaptureWhenReady(QCamera::Status status)
{
    if (status != QCamera::ActiveStatus) return;
}
