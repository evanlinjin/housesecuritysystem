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

class ImageHandler : public QObject
{
    Q_OBJECT
public:
    explicit ImageHandler(QObject *parent = 0);

private:
    QEventLoop loop;

    QCamera* camera;
    QCameraImageCapture* imageCapture;
    bool cameraOn;

signals:
    void captureDone();

public slots:
    void turnCameraOn();
    void turnCameraOff();

    void beginCapture();

private slots:
//    void processAvailable(int id, QVideoFrame frame);
    void processCapture(int id, QImage img);
    void captureError(int id, QCameraImageCapture::Error e, QString msg);
};

#endif // IMAGEHANDLER_H
