/****************************************************************************
** Meta object code from reading C++ file 'homeseed.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.8.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../clientside_qt/homeseed.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'homeseed.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.8.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Homeseed_t {
    QByteArrayData data[14];
    char stringdata0[172];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Homeseed_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Homeseed_t qt_meta_stringdata_Homeseed = {
    {
QT_MOC_LITERAL(0, 0, 8), // "Homeseed"
QT_MOC_LITERAL(1, 9, 12), // "popPageStack"
QT_MOC_LITERAL(2, 22, 0), // ""
QT_MOC_LITERAL(3, 23, 10), // "closePopup"
QT_MOC_LITERAL(4, 34, 17), // "stackDepthChanged"
QT_MOC_LITERAL(5, 52, 16), // "popupOpenChanged"
QT_MOC_LITERAL(6, 69, 8), // "abortAll"
QT_MOC_LITERAL(7, 78, 17), // "genNewUserManager"
QT_MOC_LITERAL(8, 96, 15), // "NewUserManager*"
QT_MOC_LITERAL(9, 112, 6), // "parent"
QT_MOC_LITERAL(10, 119, 16), // "genSessionsModel"
QT_MOC_LITERAL(11, 136, 14), // "SessionsModel*"
QT_MOC_LITERAL(12, 151, 10), // "stackDepth"
QT_MOC_LITERAL(13, 162, 9) // "popupOpen"

    },
    "Homeseed\0popPageStack\0\0closePopup\0"
    "stackDepthChanged\0popupOpenChanged\0"
    "abortAll\0genNewUserManager\0NewUserManager*\0"
    "parent\0genSessionsModel\0SessionsModel*\0"
    "stackDepth\0popupOpen"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Homeseed[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       2,   72, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x06 /* Public */,
       3,    0,   60,    2, 0x06 /* Public */,
       4,    0,   61,    2, 0x06 /* Public */,
       5,    0,   62,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       6,    0,   63,    2, 0x0a /* Public */,
       7,    1,   64,    2, 0x0a /* Public */,
       7,    0,   67,    2, 0x2a /* Public | MethodCloned */,
      10,    1,   68,    2, 0x0a /* Public */,
      10,    0,   71,    2, 0x2a /* Public | MethodCloned */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    0x80000000 | 8, QMetaType::QObjectStar,    9,
    0x80000000 | 8,
    0x80000000 | 11, QMetaType::QObjectStar,    9,
    0x80000000 | 11,

 // properties: name, type, flags
      12, QMetaType::Int, 0x00495003,
      13, QMetaType::Bool, 0x00495003,

 // properties: notify_signal_id
       2,
       3,

       0        // eod
};

void Homeseed::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Homeseed *_t = static_cast<Homeseed *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->popPageStack(); break;
        case 1: _t->closePopup(); break;
        case 2: _t->stackDepthChanged(); break;
        case 3: _t->popupOpenChanged(); break;
        case 4: _t->abortAll(); break;
        case 5: { NewUserManager* _r = _t->genNewUserManager((*reinterpret_cast< QObject*(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< NewUserManager**>(_a[0]) = _r; }  break;
        case 6: { NewUserManager* _r = _t->genNewUserManager();
            if (_a[0]) *reinterpret_cast< NewUserManager**>(_a[0]) = _r; }  break;
        case 7: { SessionsModel* _r = _t->genSessionsModel((*reinterpret_cast< QObject*(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< SessionsModel**>(_a[0]) = _r; }  break;
        case 8: { SessionsModel* _r = _t->genSessionsModel();
            if (_a[0]) *reinterpret_cast< SessionsModel**>(_a[0]) = _r; }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (Homeseed::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Homeseed::popPageStack)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (Homeseed::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Homeseed::closePopup)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (Homeseed::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Homeseed::stackDepthChanged)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (Homeseed::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Homeseed::popupOpenChanged)) {
                *result = 3;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        Homeseed *_t = static_cast<Homeseed *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< int*>(_v) = _t->stackDepth(); break;
        case 1: *reinterpret_cast< bool*>(_v) = _t->popupOpen(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        Homeseed *_t = static_cast<Homeseed *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->stackDepth(*reinterpret_cast< int*>(_v)); break;
        case 1: _t->popupOpen(*reinterpret_cast< bool*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

const QMetaObject Homeseed::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Homeseed.data,
      qt_meta_data_Homeseed,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *Homeseed::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Homeseed::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_Homeseed.stringdata0))
        return static_cast<void*>(const_cast< Homeseed*>(this));
    return QObject::qt_metacast(_clname);
}

int Homeseed::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 2;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void Homeseed::popPageStack()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}

// SIGNAL 1
void Homeseed::closePopup()
{
    QMetaObject::activate(this, &staticMetaObject, 1, Q_NULLPTR);
}

// SIGNAL 2
void Homeseed::stackDepthChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, Q_NULLPTR);
}

// SIGNAL 3
void Homeseed::popupOpenChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, Q_NULLPTR);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
