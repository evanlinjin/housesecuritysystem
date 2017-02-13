/****************************************************************************
** Meta object code from reading C++ file 'imagehandler.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.8.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../devicebackend_camera/imagehandler.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'imagehandler.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.8.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ImageHandler_t {
    QByteArrayData data[10];
    char stringdata0[125];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ImageHandler_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ImageHandler_t qt_meta_stringdata_ImageHandler = {
    {
QT_MOC_LITERAL(0, 0, 12), // "ImageHandler"
QT_MOC_LITERAL(1, 13, 11), // "captureDone"
QT_MOC_LITERAL(2, 25, 0), // ""
QT_MOC_LITERAL(3, 26, 12), // "turnCameraOn"
QT_MOC_LITERAL(4, 39, 13), // "turnCameraOff"
QT_MOC_LITERAL(5, 53, 12), // "beginCapture"
QT_MOC_LITERAL(6, 66, 13), // "getCameraInfo"
QT_MOC_LITERAL(7, 80, 15), // "QCamera::Status"
QT_MOC_LITERAL(8, 96, 6), // "status"
QT_MOC_LITERAL(9, 103, 21) // "beginCaptureWhenReady"

    },
    "ImageHandler\0captureDone\0\0turnCameraOn\0"
    "turnCameraOff\0beginCapture\0getCameraInfo\0"
    "QCamera::Status\0status\0beginCaptureWhenReady"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ImageHandler[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   44,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       3,    0,   45,    2, 0x0a /* Public */,
       4,    0,   46,    2, 0x0a /* Public */,
       5,    0,   47,    2, 0x0a /* Public */,
       6,    1,   48,    2, 0x08 /* Private */,
       9,    1,   51,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 7,    8,
    QMetaType::Void, 0x80000000 | 7,    8,

       0        // eod
};

void ImageHandler::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ImageHandler *_t = static_cast<ImageHandler *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->captureDone(); break;
        case 1: _t->turnCameraOn(); break;
        case 2: _t->turnCameraOff(); break;
        case 3: _t->beginCapture(); break;
        case 4: _t->getCameraInfo((*reinterpret_cast< QCamera::Status(*)>(_a[1]))); break;
        case 5: _t->beginCaptureWhenReady((*reinterpret_cast< QCamera::Status(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 4:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QCamera::Status >(); break;
            }
            break;
        case 5:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QCamera::Status >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (ImageHandler::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&ImageHandler::captureDone)) {
                *result = 0;
                return;
            }
        }
    }
}

const QMetaObject ImageHandler::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_ImageHandler.data,
      qt_meta_data_ImageHandler,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *ImageHandler::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ImageHandler::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_ImageHandler.stringdata0))
        return static_cast<void*>(const_cast< ImageHandler*>(this));
    return QObject::qt_metacast(_clname);
}

int ImageHandler::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void ImageHandler::captureDone()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
