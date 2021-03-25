import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownButtonTest extends StatelessWidget{
  var selItemValue = '003';

  List<DropdownMenuItem> generateItemList(){
    final List<DropdownMenuItem> items = new List();
    items.add(new DropdownMenuItem(child: Text('北京'),value:'001',));
    items.add(new DropdownMenuItem(child: Text('天津'),value:'002',));
    items.add(new DropdownMenuItem(child: Text('上海'),value:'003',));
    items.add(new DropdownMenuItem(child: Text('石家庄'),value:'004',));
    return items;
  }


  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      //提示文本框
      hint: Text('请选择城市'),
      items: generateItemList(),
      //默认值
      value: selItemValue,
      iconSize: 40,
      style: TextStyle(
        color: Colors.green,
      ),
      //阴影高度
      elevation: 25,
      isDense: true,

      //将下拉框设置成水平填充父级
      isExpanded: true,
      onChanged: (T){
        var obj = T;

      },
    );
  }
}