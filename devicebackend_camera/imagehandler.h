#ifndef IMAGEHANDLER_H
#define IMAGEHANDLER_H

#include <QObject>
#include <QCamera>
#include <QCameraInfo>
#include <QCameraImageCapture>
#include <QImage>

#include <QEventLoop>
#include <QTimer>

#include <iostream>
#include <string>

#include "imagesurface.h"

class ImageHandler : public QObject
{
    Q_OBJECT
public:
    explicit ImageHandler(QObject *parent = 0);

private:
    QEventLoop loop;

    QCamera* camera;
    ImageSurface* imageSurface;
    bool cameraOn;

    // Camera Info.
    QCamera::LockTypes supportedLockTypes;
    QList<QCamera::FrameRateRange> supportedFrameRateRanges;
    QList<QVideoFrame::PixelFormat> supportedPixelFormats;
    QList<QSize> supportedResolutions;
    QList<QCameraViewfinderSettings> supportedSettings;


signals:
    void captureDone();

public slots:
    void turnCameraOn();
    void turnCameraOff();

    void beginCapture();

private slots:
    void getCameraInfo(QCamera::Status status);
    void beginCaptureWhenReady(QCamera::Status status);
};

#endif // IMAGEHANDLER_H
