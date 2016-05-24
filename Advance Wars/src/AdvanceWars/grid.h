#ifndef GRID_H
#define GRID_H

#include "cell.h"

class grid
{
public:
    grid(int width, int height)
        :_x(width), _y(height), _board(new Cell * [x])
    {
       //set up height for board (width already set)
       for(int col = 0; col < _x; ++col)
           board[col] = new Cell[_y];
    }

    //not sure if i want to save unit position in the
    //unit array passed
    void scatterUnits(Unit * units)
    {
        while(units != nullptr)
        {
            //cell has unit at random x < width and random y < height
            //cell = unit (calls cell's overloaded op)
        }
    }
    void toggleActivePlayer()
    {
        for(int x = 0; x < _x; ++x)
            for(int y = 0; y < _y; ++y)
                //if cell owned = false
                //toggle cell to true
                //else toggle to false
    }

private:
    int _x; //width
    int _y; //height
    cell ** _board; //#x#
};

#endif // GRID_H

