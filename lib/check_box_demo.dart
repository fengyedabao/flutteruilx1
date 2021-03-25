/*
* checkbox选择框
* */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget{
  State<StatefulWidget> createState() =>CheckBoxState();
}


class CheckBoxState extends State<CheckBoxDemo>{

  var currentCheck = 0;

  var _value = false;
  var isCheck = false;

  List<bool>isChecks = [false,false,false,false];

  void _valueChange(bool value){
    for(var i=0;i<isChecks.length;i++){
      isChecks[i] = value;

    }
    setState(() {
      _value = value;
    });

  }





  @override
  Widget build(BuildContext context) {

    return Column(
      children:<Widget> [

        Checkbox(
          activeColor: Colors.green,
            value: 0==currentCheck,
            //一般用默认false,设成true的话，value可以为空，false时value不可为空
            tristate: false,
            onChanged: (bool check){

            setState(() {
              if(check){
                currentCheck=0;
              }
            });

            },
        ),
        Checkbox(
          activeColor: Colors.green,
            value: 1==currentCheck,
            //一般用默认false,设成true的话，value可以为空，false时value不可为空
            tristate: false,
            onChanged: (bool check){

            setState(() {
              if(check){
                currentCheck=1;
              }
            });

            },
        ),

        Center(
          child: CheckboxListTile(
            value: _value,
            //默认文字是否高亮
            selected: true,
            onChanged:_valueChange ,
            dense: false,//文字是否对齐图标高度
            isThreeLine: false,
            title: Text('整个内容'),
            //控件相对于文本，放在何处
            controlAffinity: ListTileControlAffinity.platform,
            subtitle: Text('勾选下列选项'),
            secondary: Icon(Icons.desktop_windows_outlined),//左侧小图标
            activeColor: Colors.red,

          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[0],

            onChanged:(bool){
              setState(() {
                isChecks[0] = bool;
              });
            } ,

            title: Text('选项0'),
            //控件相对于文本，放在何处
            controlAffinity: ListTileControlAffinity.platform,


            activeColor: isChecks[0]?Colors.red:Colors.green,

          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[1],

            onChanged:(bool){
              setState(() {
                isChecks[1] = bool;
              });
            } ,

            title: Text('选项1'),
            //控件相对于文本，放在何处
            controlAffinity: ListTileControlAffinity.platform,


            activeColor: isChecks[1]?Colors.red:Colors.green,

          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[2],

            onChanged:(bool){
              setState(() {
                isChecks[2] = bool;
              });
            } ,

            title: Text('选项2'),
            //控件相对于文本，放在何处
            controlAffinity: ListTileControlAffinity.platform,


            activeColor: isChecks[2]?Colors.red:Colors.green,

          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[3],

            onChanged:(bool){
              setState(() {
                isChecks[3] = bool;
              });
            } ,

            title: Text('选项3'),
            //控件相对于文本，放在何处
            controlAffinity: ListTileControlAffinity.platform,


            activeColor: isChecks[3]?Colors.red:Colors.green,

          ),
        ),
      ],
    );
  }
}