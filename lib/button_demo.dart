/*
* flutter常用按钮示例
* */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dropDownBotton.dart';

class ButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Center(
            child: Container(
              //height:320,
              child: DropDownButtonTest(),
            )),
        SizedBox(
          height: 40.0,
        ),
        FlatButton(
          onPressed: () {
            print('按钮被按下');
          },
          child: Text(
            '我是按钮',
            style: TextStyle(fontSize: 26),
          ),
          color: Colors.green,
          disabledColor: Colors.grey,
          textColor: Colors.white,
          //按钮主题
          textTheme: ButtonTextTheme.normal,
          //墨汁飞溅的颜色
          splashColor: Colors.blue,
          clipBehavior: Clip.antiAlias,
          padding: new EdgeInsets.only(
            left: 20,
            top: 5,
            right: 20,
            bottom: 5,
          ),
          // shape: Border.all(
          //   width: 2,
          //   color: Colors.white,
          //   style: BorderStyle.solid,
          //
          // ),
          shape: RoundedRectangleBorder(
              side: new BorderSide(
                width: 2,
                color: Colors.white,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )),
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.print,
            size: 30,
          ),
          label: Text(
            '打印',
            style: TextStyle(fontSize: 30),
          ),
        ),
        FloatingActionButton.extended(
            onPressed: () {},
            label: Text(
              '这是一个FAB扩展',
              style: TextStyle(color: Colors.white),
            )),
        IconButton(
          icon: Icon(Icons.print),
          onPressed: () {},
          alignment: Alignment.bottomCenter,
          splashColor: Colors.blue,
          tooltip: '图标按钮',
        ),
        OutlineButton(
          onPressed: () {},
          child: Text('outlinebutton'),
          borderSide: BorderSide(color: Colors.green, width: 5),
          textColor: Colors.blue,
        ),
        OutlineButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.umbrella,
            color: Colors.blue,
            size: 28,
          ),
          label: Text(
            'outlinebuttonicon',
            style: TextStyle(
              fontSize: 28,
              color: Colors.blue,
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {
            print('单纯想打印');
          },
          child: Text('凸起按钮'),
          splashColor: Colors.blue,
        ),
        RawMaterialButton(
          onPressed: () {},
          child: Text('无主题按钮'),
          splashColor: Colors.blue,
        )
      ],
    );
  }
}