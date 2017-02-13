/****************************************************************************
** Meta object code from reading C++ file 'loadingmanager.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.8.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../clientside_qt/loadingmanager.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'loadingmanager.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.8.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_LoadingManager_t {
    QByteArrayData data[10];
    char stringdata0[120];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_LoadingManager_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_LoadingManager_t qt_meta_stringdata_LoadingManager = {
    {
QT_MOC_LITERAL(0, 0, 14), // "LoadingManager"
QT_MOC_LITERAL(1, 15, 12), // "loadingStart"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 3), // "msg"
QT_MOC_LITERAL(4, 33, 10), // "showCancel"
QT_MOC_LITERAL(5, 44, 11), // "loadingStop"
QT_MOC_LITERAL(6, 56, 13), // "activeChanged"
QT_MOC_LITERAL(7, 70, 20), // "setLoadingActiveTrue"
QT_MOC_LITERAL(8, 91, 21), // "setLoadingActiveFalse"
QT_MOC_LITERAL(9, 113, 6) // "active"

    },
    "LoadingManager\0loadingStart\0\0msg\0"
    "showCancel\0loadingStop\0activeChanged\0"
    "setLoadingActiveTrue\0setLoadingActiveFalse\0"
    "active"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_LoadingManager[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       1,   48, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    2,   39,    2, 0x06 /* Public */,
       5,    0,   44,    2, 0x06 /* Public */,
       6,    0,   45,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    0,   46,    2, 0x08 /* Private */,
       8,    0,   47,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::Bool,    3,    4,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,

 // properties: name, type, flags
       9, QMetaType::Bool, 0x00495003,

 // properties: notify_signal_id
       2,

       0        // eod
};

void LoadingManager::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        LoadingManager *_t = static_cast<LoadingManager *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->loadingStart((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 1: _t->loadingStop(); break;
        case 2: _t->activeChanged(); break;
        case 3: _t->setLoadingActiveTrue(); break;
        case 4: _t->setLoadingActiveFalse(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (LoadingManager::*_t)(QString , bool );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&LoadingManager::loadingStart)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (LoadingManager::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&LoadingManager::loadingStop)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (LoadingManager::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&LoadingManager::activeChanged)) {
                *result = 2;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        LoadingManager *_t = static_cast<LoadingManager *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< bool*>(_v) = _t->active(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        LoadingManager *_t = static_cast<LoadingManager *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->active(*reinterpret_cast< bool*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

const QMetaObject LoadingManager::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_LoadingManager.data,
      qt_meta_data_LoadingManager,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *LoadingManager::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *LoadingManager::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_LoadingManager.stringdata0))
        return static_cast<void*>(const_cast< LoadingManager*>(this));
    return QObject::qt_metacast(_clname);
}

int LoadingManager::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 1;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void LoadingManager::loadingStart(QString _t1, bool _t2)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void LoadingManager::loadingStop()
{
    QMetaObject::activate(this, &staticMetaObject, 1, Q_NULLPTR);
}

// SIGNAL 2
void LoadingManager::activeChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, Q_NULLPTR);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
