/****************************************************************************
** Meta object code from reading C++ file 'sessionsmodel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.8.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../clientside_qt/models/sessionsmodel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'sessionsmodel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.8.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_SessionsModel_t {
    QByteArrayData data[7];
    char stringdata0[70];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_SessionsModel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_SessionsModel_t qt_meta_stringdata_SessionsModel = {
    {
QT_MOC_LITERAL(0, 0, 13), // "SessionsModel"
QT_MOC_LITERAL(1, 14, 13), // "deleteSession"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 3), // "sid"
QT_MOC_LITERAL(4, 33, 22), // "deleteAllOtherSessions"
QT_MOC_LITERAL(5, 56, 7), // "refresh"
QT_MOC_LITERAL(6, 64, 5) // "clear"

    },
    "SessionsModel\0deleteSession\0\0sid\0"
    "deleteAllOtherSessions\0refresh\0clear"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_SessionsModel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   34,    2, 0x0a /* Public */,
       4,    0,   37,    2, 0x0a /* Public */,
       5,    0,   38,    2, 0x0a /* Public */,
       6,    0,   39,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void SessionsModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        SessionsModel *_t = static_cast<SessionsModel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->deleteSession((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->deleteAllOtherSessions(); break;
        case 2: _t->refresh(); break;
        case 3: _t->clear(); break;
        default: ;
        }
    }
}

const QMetaObject SessionsModel::staticMetaObject = {
    { &QAbstractListModel::staticMetaObject, qt_meta_stringdata_SessionsModel.data,
      qt_meta_data_SessionsModel,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *SessionsModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *SessionsModel::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_SessionsModel.stringdata0))
        return static_cast<void*>(const_cast< SessionsModel*>(this));
    return QAbstractListModel::qt_metacast(_clname);
}

int SessionsModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QAbstractListModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
