import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNative extends StatefulWidget{

  @override
  BottomNativeState createState() =>BottomNativeState();

}

class BottomNativeState  extends State<BottomNative>{
  int _currentIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    
    return BottomNavigationBar(
      //底部按钮类型，固定样式
      type: BottomNavigationBarType.fixed,
      iconSize: 24.0,
      //点击按钮回调的函数
      onTap: _onItemTapped,
      //当前选中项索引，高亮显示
      currentIndex: _currentIndex,
      //fixedColor: Colors.green,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(title:Text('聊天'),icon:Icon(Icons.chat)),
        BottomNavigationBarItem(title:Text('朋友圈'),icon:Icon(Icons.family_restroom)),
        BottomNavigationBarItem(title:Text('我的'),icon:Icon(Icons.person)),
      ],
    );
  }
}