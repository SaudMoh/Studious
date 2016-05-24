#ifndef UNIT_H
#define UNIT_H

#include <QImage>
#include <QObject>
#include <QDebug>

class unit
{
public:
    unit()
    {}
    int getDamage()
    {
        return _dmg * _size;
    }
    int getCap()
    {
        return _cap * _size;
    }
    ~unit()
    {}
private:
    int _size; //effectively hp, dmg and cap strength will be based on this
    int _dmg; //damage dealt to another unit = _dmg * _size
    int _cap; //overall cap strength per turn = _cap * _size
    //QImage _image;
};
#endif UNIT_H
