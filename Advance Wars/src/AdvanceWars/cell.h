#ifndef CELL_H
#define CELL_H

#include <QRect>
#include <QImage>
#include <QObject>
#include <QDebug>

//global Color
//global border color

class cell
{
public:
    cell(int x, int y, int size)
        : _x(x),_y(y), _active(false)//,_box(size, color, border color)
    {}
    void highlight()
    {
        //_box.border-color = orange
        //_box.color = lighter orange
    }
    void unHighlight()
    {
        //_box.border-color = global color
        //_box.color = global
    }
    void operator = (const Unit & passed)
    {
        //_image = passed.image
    }
    void toggle()
    {
        if(_active)
            _active = false;
        else
            _active = true;
    }
    ~cell()
    {}
private:
    QRect _box;
    //#x# size need to be passed
    QImage _image;

    //positioning
    int _x;
    int _y;

    //player 1 or 2's turn
    bool _active;
};

#endif // CELL_H
