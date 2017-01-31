/****************************************************************************
** Meta object code from reading C++ file 'sessionmanager.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.8.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../clientside_qt/sessionmanager.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'sessionmanager.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.8.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_SessionManager_t {
    QByteArrayData data[16];
    char stringdata0[143];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_SessionManager_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_SessionManager_t qt_meta_stringdata_SessionManager = {
    {
QT_MOC_LITERAL(0, 0, 14), // "SessionManager"
QT_MOC_LITERAL(1, 15, 12), // "paramChanged"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 17), // "isLoggedInChanged"
QT_MOC_LITERAL(4, 47, 13), // "getClientInfo"
QT_MOC_LITERAL(5, 61, 5), // "login"
QT_MOC_LITERAL(6, 67, 5), // "email"
QT_MOC_LITERAL(7, 73, 8), // "password"
QT_MOC_LITERAL(8, 82, 6), // "logout"
QT_MOC_LITERAL(9, 89, 10), // "isLoggedIn"
QT_MOC_LITERAL(10, 100, 3), // "uid"
QT_MOC_LITERAL(11, 104, 3), // "sid"
QT_MOC_LITERAL(12, 108, 4), // "skey"
QT_MOC_LITERAL(13, 113, 6), // "client"
QT_MOC_LITERAL(14, 120, 9), // "loginTime"
QT_MOC_LITERAL(15, 130, 12) // "lastSeenTime"

    },
    "SessionManager\0paramChanged\0\0"
    "isLoggedInChanged\0getClientInfo\0login\0"
    "email\0password\0logout\0isLoggedIn\0uid\0"
    "sid\0skey\0client\0loginTime\0lastSeenTime"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_SessionManager[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       8,   48, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   39,    2, 0x06 /* Public */,
       3,    0,   40,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    0,   41,    2, 0x0a /* Public */,
       5,    2,   42,    2, 0x0a /* Public */,
       8,    0,   47,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::QString,
    QMetaType::Void, QMetaType::QString, QMetaType::QString,    6,    7,
    QMetaType::Void,

 // properties: name, type, flags
       9, QMetaType::Bool, 0x00495001,
      10, QMetaType::QString, 0x00495003,
       6, QMetaType::QString, 0x00495003,
      11, QMetaType::QString, 0x00495003,
      12, QMetaType::QString, 0x00495003,
      13, QMetaType::QString, 0x00495003,
      14, QMetaType::Int, 0x00495003,
      15, QMetaType::Int, 0x00495003,

 // properties: notify_signal_id
       1,
       0,
       0,
       0,
       0,
       0,
       0,
       0,

       0        // eod
};

void SessionManager::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        SessionManager *_t = static_cast<SessionManager *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->paramChanged(); break;
        case 1: _t->isLoggedInChanged(); break;
        case 2: { QString _r = _t->getClientInfo();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 3: _t->login((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 4: _t->logout(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (SessionManager::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&SessionManager::paramChanged)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (SessionManager::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&SessionManager::isLoggedInChanged)) {
                *result = 1;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        SessionManager *_t = static_cast<SessionManager *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< bool*>(_v) = _t->isLoggedIn(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->uid(); break;
        case 2: *reinterpret_cast< QString*>(_v) = _t->email(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->sid(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->skey(); break;
        case 5: *reinterpret_cast< QString*>(_v) = _t->client(); break;
        case 6: *reinterpret_cast< int*>(_v) = _t->loginTime(); break;
        case 7: *reinterpret_cast< int*>(_v) = _t->lastSeenTime(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        SessionManager *_t = static_cast<SessionManager *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 1: _t->uid(*reinterpret_cast< QString*>(_v)); break;
        case 2: _t->email(*reinterpret_cast< QString*>(_v)); break;
        case 3: _t->sid(*reinterpret_cast< QString*>(_v)); break;
        case 4: _t->skey(*reinterpret_cast< QString*>(_v)); break;
        case 5: _t->client(*reinterpret_cast< QString*>(_v)); break;
        case 6: _t->loginTime(*reinterpret_cast< int*>(_v)); break;
        case 7: _t->lastSeenTime(*reinterpret_cast< int*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

const QMetaObject SessionManager::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_SessionManager.data,
      qt_meta_data_SessionManager,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *SessionManager::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *SessionManager::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_SessionManager.stringdata0))
        return static_cast<void*>(const_cast< SessionManager*>(this));
    return QObject::qt_metacast(_clname);
}

int SessionManager::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
        _id -= 8;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 8;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 8;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 8;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 8;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 8;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void SessionManager::paramChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}

// SIGNAL 1
void SessionManager::isLoggedInChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, Q_NULLPTR);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
