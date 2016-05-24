#ifndef BUILDING_H
#define BUILDING_H

#include <QImage>
#include <QObject>
#include <QDebug>

class building
{
public:
    building(int cap, int res)
        :_cap(cap),_res(res)//_image(image)
    {}
    ~building()
    {}
private:
    //how much cap strength needed to own building
    int _cap;
    //how much resorces it distributes after owning
    int _resource;
    //QImage _image;
};
#endif BUILDING_H
