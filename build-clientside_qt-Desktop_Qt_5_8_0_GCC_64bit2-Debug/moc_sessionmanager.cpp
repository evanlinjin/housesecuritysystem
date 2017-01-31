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
    QByteArrayData data[24];
    char stringdata0[228];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_SessionManager_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_SessionManager_t qt_meta_stringdata_SessionManager = {
    {
QT_MOC_LITERAL(0, 0, 14), // "SessionManager"
QT_MOC_LITERAL(1, 15, 19), // "sessionParamChanged"
QT_MOC_LITERAL(2, 35, 0), // ""
QT_MOC_LITERAL(3, 36, 8), // "loggedIn"
QT_MOC_LITERAL(4, 45, 9), // "loggedOut"
QT_MOC_LITERAL(5, 55, 12), // "loadingStart"
QT_MOC_LITERAL(6, 68, 3), // "msg"
QT_MOC_LITERAL(7, 72, 11), // "loadingStop"
QT_MOC_LITERAL(8, 84, 13), // "getClientInfo"
QT_MOC_LITERAL(9, 98, 5), // "login"
QT_MOC_LITERAL(10, 104, 5), // "email"
QT_MOC_LITERAL(11, 110, 8), // "password"
QT_MOC_LITERAL(12, 119, 6), // "logout"
QT_MOC_LITERAL(13, 126, 10), // "isLoggedIn"
QT_MOC_LITERAL(14, 137, 8), // "abortAll"
QT_MOC_LITERAL(15, 146, 16), // "genSessionsModel"
QT_MOC_LITERAL(16, 163, 14), // "SessionsModel*"
QT_MOC_LITERAL(17, 178, 6), // "parent"
QT_MOC_LITERAL(18, 185, 3), // "uid"
QT_MOC_LITERAL(19, 189, 3), // "sid"
QT_MOC_LITERAL(20, 193, 4), // "skey"
QT_MOC_LITERAL(21, 198, 6), // "client"
QT_MOC_LITERAL(22, 205, 9), // "loginTime"
QT_MOC_LITERAL(23, 215, 12) // "lastSeenTime"

    },
    "SessionManager\0sessionParamChanged\0\0"
    "loggedIn\0loggedOut\0loadingStart\0msg\0"
    "loadingStop\0getClientInfo\0login\0email\0"
    "password\0logout\0isLoggedIn\0abortAll\0"
    "genSessionsModel\0SessionsModel*\0parent\0"
    "uid\0sid\0skey\0client\0loginTime\0"
    "lastSeenTime"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_SessionManager[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       7,   94, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   74,    2, 0x06 /* Public */,
       3,    0,   75,    2, 0x06 /* Public */,
       4,    0,   76,    2, 0x06 /* Public */,
       5,    1,   77,    2, 0x06 /* Public */,
       7,    0,   80,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       8,    0,   81,    2, 0x0a /* Public */,
       9,    2,   82,    2, 0x0a /* Public */,
      12,    0,   87,    2, 0x0a /* Public */,
      13,    0,   88,    2, 0x0a /* Public */,
      14,    0,   89,    2, 0x0a /* Public */,
      15,    1,   90,    2, 0x0a /* Public */,
      15,    0,   93,    2, 0x2a /* Public | MethodCloned */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    6,
    QMetaType::Void,

 // slots: parameters
    QMetaType::QString,
    QMetaType::Bool, QMetaType::QString, QMetaType::QString,   10,   11,
    QMetaType::Bool,
    QMetaType::Bool,
    QMetaType::Void,
    0x80000000 | 16, QMetaType::QObjectStar,   17,
    0x80000000 | 16,

 // properties: name, type, flags
      18, QMetaType::QString, 0x00495003,
      10, QMetaType::QString, 0x00495003,
      19, QMetaType::QString, 0x00495003,
      20, QMetaType::QString, 0x00495003,
      21, QMetaType::QString, 0x00495003,
      22, QMetaType::Int, 0x00495003,
      23, QMetaType::Int, 0x00495003,

 // properties: notify_signal_id
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
        case 0: _t->sessionParamChanged(); break;
        case 1: _t->loggedIn(); break;
        case 2: _t->loggedOut(); break;
        case 3: _t->loadingStart((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->loadingStop(); break;
        case 5: { QString _r = _t->getClientInfo();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 6: { bool _r = _t->login((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 7: { bool _r = _t->logout();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 8: { bool _r = _t->isLoggedIn();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 9: _t->abortAll(); break;
        case 10: { SessionsModel* _r = _t->genSessionsModel((*reinterpret_cast< QObject*(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< SessionsModel**>(_a[0]) = _r; }  break;
        case 11: { SessionsModel* _r = _t->genSessionsModel();
            if (_a[0]) *reinterpret_cast< SessionsModel**>(_a[0]) = _r; }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (SessionManager::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&SessionManager::sessionParamChanged)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (SessionManager::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&SessionManager::loggedIn)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (SessionManager::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&SessionManager::loggedOut)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (SessionManager::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&SessionManager::loadingStart)) {
                *result = 3;
                return;
            }
        }
        {
            typedef void (SessionManager::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&SessionManager::loadingStop)) {
                *result = 4;
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
        case 0: *reinterpret_cast< QString*>(_v) = _t->uid(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->email(); break;
        case 2: *reinterpret_cast< QString*>(_v) = _t->sid(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->skey(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->client(); break;
        case 5: *reinterpret_cast< int*>(_v) = _t->loginTime(); break;
        case 6: *reinterpret_cast< int*>(_v) = _t->lastSeenTime(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        SessionManager *_t = static_cast<SessionManager *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->uid(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->email(*reinterpret_cast< QString*>(_v)); break;
        case 2: _t->sid(*reinterpret_cast< QString*>(_v)); break;
        case 3: _t->skey(*reinterpret_cast< QString*>(_v)); break;
        case 4: _t->client(*reinterpret_cast< QString*>(_v)); break;
        case 5: _t->loginTime(*reinterpret_cast< int*>(_v)); break;
        case 6: _t->lastSeenTime(*reinterpret_cast< int*>(_v)); break;
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
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 12;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 7;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void SessionManager::sessionParamChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}

// SIGNAL 1
void SessionManager::loggedIn()
{
    QMetaObject::activate(this, &staticMetaObject, 1, Q_NULLPTR);
}

// SIGNAL 2
void SessionManager::loggedOut()
{
    QMetaObject::activate(this, &staticMetaObject, 2, Q_NULLPTR);
}

// SIGNAL 3
void SessionManager::loadingStart(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void SessionManager::loadingStop()
{
    QMetaObject::activate(this, &staticMetaObject, 4, Q_NULLPTR);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
