#include "imagesurface.h"

ImageSurface::ImageSurface(QObject *parent) : QAbstractVideoSurface(parent)
{

}

QList<QVideoFrame::PixelFormat> ImageSurface::supportedPixelFormats(
        QAbstractVideoBuffer::HandleType handleType) const
{
    Q_UNUSED(handleType);
    // Return the formats you will support
    return QList<QVideoFrame::PixelFormat>() << QVideoFrame::Format_RGB565 << QVideoFrame::Format_Jpeg;
}

bool ImageSurface::present(const QVideoFrame &frame)
{
//    Q_UNUSED(frame);
    // Handle the frame and do your processing
    qInfo() << "[FRAME]" << frame.bits() << frame.availableMetaData();
    QImage::Format format = QVideoFrame::imageFormatFromPixelFormat(frame.pixelFormat());

    QImage img(frame.bits(), frame.width(), frame.height(), frame.bytesPerLine(), format);
    img.save("", nullptr, 5);

    qInfo() << "[IMAGE]" << img << img.bits() << img.byteCount() << img.dotsPerMeterX();

    return true;
}
