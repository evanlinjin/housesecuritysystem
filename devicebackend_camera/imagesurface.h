#ifndef IMAGESURFACE_H
#define IMAGESURFACE_H

#include <QAbstractVideoSurface>
#include <QVideoFrame>
#include <QImage>
#include <QDebug>

class ImageSurface : public QAbstractVideoSurface
{
    Q_OBJECT
public:
    ImageSurface(QObject *parent = 0);

    QList<QVideoFrame::PixelFormat> supportedPixelFormats(
            QAbstractVideoBuffer::HandleType handleType = QAbstractVideoBuffer::NoHandle) const;

    bool present(const QVideoFrame &frame);
};

#endif // IMAGESURFACE_H
