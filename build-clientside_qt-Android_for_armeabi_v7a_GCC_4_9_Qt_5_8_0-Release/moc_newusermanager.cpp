/****************************************************************************
** Meta object code from reading C++ file 'newusermanager.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.8.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../clientside_qt/newusermanager.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'newusermanager.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.8.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_NewUserManager_t {
    QByteArrayData data[14];
    char stringdata0[165];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_NewUserManager_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_NewUserManager_t qt_meta_stringdata_NewUserManager = {
    {
QT_MOC_LITERAL(0, 0, 14), // "NewUserManager"
QT_MOC_LITERAL(1, 15, 18), // "createUserComplete"
QT_MOC_LITERAL(2, 34, 0), // ""
QT_MOC_LITERAL(3, 35, 3), // "msg"
QT_MOC_LITERAL(4, 39, 22), // "passwordChangeComplete"
QT_MOC_LITERAL(5, 62, 17), // "testUsernameEmail"
QT_MOC_LITERAL(6, 80, 8), // "username"
QT_MOC_LITERAL(7, 89, 18), // "testUsernameUnique"
QT_MOC_LITERAL(8, 108, 10), // "createUser"
QT_MOC_LITERAL(9, 119, 5), // "email"
QT_MOC_LITERAL(10, 125, 8), // "password"
QT_MOC_LITERAL(11, 134, 14), // "changePassword"
QT_MOC_LITERAL(12, 149, 9), // "currentPw"
QT_MOC_LITERAL(13, 159, 5) // "newPw"

    },
    "NewUserManager\0createUserComplete\0\0"
    "msg\0passwordChangeComplete\0testUsernameEmail\0"
    "username\0testUsernameUnique\0createUser\0"
    "email\0password\0changePassword\0currentPw\0"
    "newPw"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_NewUserManager[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x06 /* Public */,
       4,    1,   47,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    1,   50,    2, 0x0a /* Public */,
       7,    1,   53,    2, 0x0a /* Public */,
       8,    2,   56,    2, 0x0a /* Public */,
      11,    2,   61,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    3,

 // slots: parameters
    QMetaType::Bool, QMetaType::QString,    6,
    QMetaType::Bool, QMetaType::QString,    6,
    QMetaType::Void, QMetaType::QString, QMetaType::QString,    9,   10,
    QMetaType::Void, QMetaType::QString, QMetaType::QString,   12,   13,

       0        // eod
};

void NewUserManager::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        NewUserManager *_t = static_cast<NewUserManager *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->createUserComplete((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->passwordChangeComplete((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: { bool _r = _t->testUsernameEmail((*reinterpret_cast< QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 3: { bool _r = _t->testUsernameUnique((*reinterpret_cast< QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 4: _t->createUser((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 5: _t->changePassword((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (NewUserManager::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&NewUserManager::createUserComplete)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (NewUserManager::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&NewUserManager::passwordChangeComplete)) {
                *result = 1;
                return;
            }
        }
    }
}

const QMetaObject NewUserManager::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_NewUserManager.data,
      qt_meta_data_NewUserManager,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *NewUserManager::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *NewUserManager::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_NewUserManager.stringdata0))
        return static_cast<void*>(const_cast< NewUserManager*>(this));
    return QObject::qt_metacast(_clname);
}

int NewUserManager::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void NewUserManager::createUserComplete(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void NewUserManager::passwordChangeComplete(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
