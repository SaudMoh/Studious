// x = first  player
// o = second player

import QtQuick 2.0

Rectangle
{
//    property bool game_over: false
//    property bool first_player_turn: true
//    property variant has_clicked: [false, false, false, false, false, false, false, false, false]

//    function check_game_over()
//    {
//		if(img_o1.visible === true && img_o2.visible === true && img_o3.visible === true)
//        {
//            game_over = true;
//            txt_game_over.visible = true;
//        }
//        else if(img_o1.visible && img_o5.visible && img_o9.visible)
//        {
//            game_over = true;
//            txt_game_over.visible = true;
//        }
//        else if(img_o1.visible && img_o4.visible && img_o7.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_o2.visible && img_o5.visible && img_o8.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_o3.visible && img_o5.visible && img_o7.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_o3.visible && img_o6.visible && img_o9.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_o4.visible && img_o5.visible && img_o6.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_o7.visible && img_o8.visible && img_o9.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_x1.visible && img_x2.visible && img_x3.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_x1.visible && img_x5.visible && img_x9.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_x1.visible && img_x4.visible && img_x7.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_x2.visible && img_x5.visible && img_x8.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_x3.visible && img_x5.visible && img_x7.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_x3.visible && img_x6.visible && img_x9.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_x4.visible && img_x5.visible && img_x6.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//        else if(img_x7.visible && img_x8.visible && img_x9.visible)
//        {
//            txt_game_over.visible = true;
//            game_over = true;
//        }
//    }

    id: big_wrapper
    anchors.fill: parent
    border.color: "black"

    Grid
    {
        id: grd_board
        height: parent.height
        width: parent.width
        anchors.horizontalCenter: big_wrapper.horizontalCenter
        anchors.verticalCenter: big_wrapper.verticalCenter
        columns: 20
        rows: 20
        z: 10

        Repeater
        {
            id: repeater_tic_tac
            model: 400
            Rectangle
            {
                height: 30
                width: 30
                border.color: "black"
                border.width: .5

                MouseArea
                {
                    id: mahsdfkljhf
                    anchors.fill: parent

                    onClicked:
                    {
                        repeater_tic_tac.itemAt(index).color = "blue"
                    }
                }

            }
        }
    }



//        //top left square
//        Rectangle
//        {
//            border.color: "white";
//            height: parent.height/20;
//            width: parent.width/20;

//            Image
//            {
//                id: img_x1;
//                visible: false;
//                //anchors.horizontalCenter: parent.horizontalCenter;
//                height: parent.height;
//                width: parent.width;
//                source: "../img/letter_x.png";
//            }
//            Image
//            {
//                id: img_o1;
//                visible: false;
////                anchors.horizontalCenter: parent.horizontalCenter;
////                anchors.verticalCenter: parent.verticalCenter;
//                height: parent.height;
//                width: parent.width;
//                source: "../img/letter_o.png";
//            }
			
//			MouseArea
//            {
//                id: ma_mouse_area01
//                anchors.fill: parent

//                onClicked:
//                {
//                    if(game_over === false && img_o1.visible === false && img_x1.visible === false)
//                    {
//                        if(first_player_turn === true)
//                        {img_o1.visible = true;first_player_turn = false;}
//                        else
//                        {img_x1.visible = true;first_player_turn = true;}
//                    }
//                    check_game_over();
//                    if(game_over === true)
//                        txt_game_over.visible = true;
//                }
//			}
//        }
//        //middle
//        Rectangle
//        {
//            border.color: "red";
//            height: parent.height/20;
//            width: parent.width/20;
//            Image
//            {
//                id: img_x2;
//                visible: false;
//                //anchors.horizontalCenter: parent.horizontalCenter;
//                height: parent.height;
//                width: parent.width;
//                source: "../img/letter_x.png";
//            }
//            Image
//            {
//                id: img_o2;
//                visible: false;
//                anchors.horizontalCenter: parent.horizontalCenter;
//                anchors.verticalCenter: parent.verticalCenter;
//                height: parent.height;
//                width: parent.width;
//                source: "../img/letter_o.png";
//            }
//            MouseArea
//            {
//                id: ma_mouse_area02
//                anchors.fill: parent

//                onClicked:
//                {
//                    if(game_over === false && img_o2.visible === false && img_x2.visible === false)
//                    {
//                        if(first_player_turn === true)
//                        {img_o2.visible = true;first_player_turn = false;}
//                        else
//                        {img_x2.visible = true;first_player_turn = true;}
//                    }
//                    check_game_over();
//                    if(game_over === true)
//                        txt_game_over.visible = true;
//                }
//            }
//        }
//        //other rects
//        Rectangle{border.color: "white"; height: parent.height/20; width: parent.width/20; Image{ id: img_x3; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: parent.height; width: parent.width;source: "../img/letter_x.png";} Image{ id: img_o3; visible:false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: parent.height; width: parent.width;source: "../img/letter_o.png";}
//            MouseArea
//            {
//                id: ma_mouse_area03
//                anchors.fill: parent

//                onClicked:
//                {
//                    if(game_over === false && img_o3.visible === false && img_x3.visible === false)
//                    {
//                        if(first_player_turn === true)
//                        {img_o3.visible = true;first_player_turn = false;}
//                        else
//                        {img_x3.visible = true;first_player_turn = true;}
//                    }
//                    check_game_over();
//                    if(game_over === true)
//                        txt_game_over.visible = true;
//                }
//            }}
//        Rectangle{border.color: "magenta"; height: parent.height/20; width: parent.width/20;Image{ id: img_x4; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: parent.height; width: parent.width;source: "../img/letter_x.png";} Image{ id: img_o4; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: parent.height; width: parent.width;source: "../img/letter_o.png";}
//            MouseArea
//            {
//                id: ma_mouse_area04
//                anchors.fill: parent

//                onClicked:
//                {
//                    if(game_over === false && img_o4.visible === false && img_x4.visible === false)
//                    {
//                        if(first_player_turn === true)
//                        {img_o4.visible = true;first_player_turn = false;}
//                        else
//                        {img_x4.visible = true;first_player_turn = true;}
//                    }
//                    check_game_over();
//                    if(game_over === true)
//                        txt_game_over.visible = true;
//                }
//            }}
//        Rectangle{border.color: "gold"; height: parent.height/20; width: parent.width/20;Image{ id: img_x5; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: parent.height; width: parent.width;source: "../img/letter_x.png";} Image{ id: img_o5; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: parent.height; width: parent.width;source: "../img/letter_o.png";}
//            MouseArea
//            {
//                id: ma_mouse_area05
//                anchors.fill: parent

//                onClicked:
//                {
//                    if(game_over === false && img_o5.visible === false && img_x5.visible === false)
//                    {
//                        if(first_player_turn === true)
//                        {img_o5.visible = true;first_player_turn = false;}
//                        else
//                        {img_x5.visible = true;first_player_turn = true;}
//                    }
//                    check_game_over();
//                    if(game_over === true)
//                        txt_game_over.visible = true;
//                }
//            }}
//        Rectangle{border.color: "green"; height: parent.height/20; width: parent.width/20;Image{ id: img_x6; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: parent.height; width: parent.width;source: "../img/letter_x.png";} Image{ id: img_o6; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: parent.height; width: parent.width;source: "../img/letter_o.png";}
//            MouseArea
//            {
//                id: ma_mouse_area06
//                anchors.fill: parent

//                onClicked:
//                {
//                    if(game_over === false && img_o6.visible === false && img_x6.visible === false)
//                    {
//                        if(first_player_turn === true)
//                        {img_o6.visible = true;first_player_turn = false;}
//                        else
//                        {img_x6.visible = true;first_player_turn = true;}
//                    }
//                    check_game_over();
//                    if(game_over === true)
//                        txt_game_over.visible = true;
//                }
//            }}
//        Rectangle{border.color: "white"; height: parent.height/20; width: parent.width/20;Image{ id: img_x7; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: parent.height; width: parent.width;source: "../img/letter_x.png";} Image{ id: img_o7; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: parent.height; width: parent.width;source: "../img/letter_o.png";}
//            MouseArea
//            {
//                id: ma_mouse_area07
//                anchors.fill: parent

//                onClicked:
//                {
//                    if(game_over === false && img_o7.visible === false && img_x7.visible === false)
//                    {
//                        if(first_player_turn === true)
//                        {img_o7.visible = true;first_player_turn = false;}
//                        else
//                        {img_x7.visible = true;first_player_turn = true;}
//                    }
//                    check_game_over();
//                    if(game_over === true)
//                        txt_game_over.visible = true;
//                }
//            }}
//        Rectangle{border.color: "brown"; height: parent.height/20; width: parent.width/20;Image{ id: img_x8; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: parent.height; width: parent.width;source: "../img/letter_x.png";} Image{ id: img_o8; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: parent.height; width: parent.width;source: "../img/letter_o.png";}
//            MouseArea
//            {
//                id: ma_mouse_area08
//                anchors.fill: parent

//                onClicked:
//                {
//                    if(game_over === false && img_o8.visible === false && img_x8.visible === false)
//                    {
//                        if(first_player_turn === true)
//                        {img_o8.visible = true;first_player_turn = false;}
//                        else
//                        {img_x8.visible = true;first_player_turn = true;}
//                    }
//                    check_game_over();
//                    if(game_over === true)
//                        txt_game_over.visible = true;
//                }
//            }}
//        Rectangle{border.color: "white"; height: parent.height/20; width: parent.width/20;Image{ id: img_x9; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: parent.height; width: parent.width;source: "../img/letter_x.png";} Image{ id: img_o9; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: parent.height; width: parent.width;source: "../img/letter_o.png";}
//            MouseArea
//            {
//                id: ma_mouse_area09
//                anchors.fill: parent

//                onClicked:
//                {
//                    if(game_over === false && img_o9.visible === false && img_x9.visible === false)
//                    {
//                        if(first_player_turn === true)
//                        {img_o9.visible = true;first_player_turn = false;}
//                        else
//                        {img_x9.visible = true;first_player_turn = true;}
//                    }
//                    check_game_over();
//                    if(game_over === true)
//                        txt_game_over.visible = true;
//                }
//            }}
//    }

//    Rectangle
//    {
//        id: rect_left
//        anchors.right: grd_board.left
//        anchors.rightMargin: -10
//        height: grd_board.height
//        width: grd_board.width

//        border.color: "white"
//        border.width: 20
//    }

//    Rectangle
//    {
//        id: rect_right
//        anchors.left: grd_board.right
//        anchors.leftMargin: -10
//        height: grd_board.height
//        width: grd_board.width

//        border.color: "white"
//        border.width: 20
//    }

//    Rectangle
//    {
//        id: rect_top
//        anchors.bottom: grd_board.top
//        anchors.bottomMargin: -10
//        height: grd_board.height
//        width: grd_board.width

//        border.color: "white"
//        border.width: 20
//    }

//    Rectangle
//    {
//        id: rect_bottom
//        anchors.top: grd_board.bottom
//        anchors.topMargin: -10
//        height: grd_board.height
//        width: grd_board.width

//        border.color: "white"
//        border.width: 20
//    }
}
