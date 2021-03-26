import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  ChipDemo({Key key}) : super(key: key);

  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ['Android', 'IOS', 'Windows', 'macOS', 'Linux'];

  List<String> _selected = [];

  String _choice = 'IOS';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                //普通圆角

                Chip(
                  label: Text('Flutter'),
                  backgroundColor: Colors.orange,
                ),

                //带圆形头部的chip

                Chip(
                  label: Text('Flutter'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('F'),
                  ),
                ),

                //带圆形头部并且是图片的chip

                Chip(
                  label: Text('Flutter'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage('http://www.5imoban.net/1.jpg'),
                  ),
                ),

                //带删除按钮的chip

                Chip(
                  label: Text('张三'),

                  //删除回调

                  onDeleted: () {},

                  deleteIcon: Icon(Icons.delete),

                  deleteIconColor: Colors.red,

                  deleteButtonTooltipMessage: '删除这个标签',
                )
              ],
            ),

            //分割线

            Divider(
              color: Colors.grey,
              height: 36.0,
            ),

            //可删除的Chip案例，相当于tags标签

            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _tags.map((tag) {
                return Chip(
                  label: Text(tag),
                  onDeleted: () {
                    setState(() {
                      _tags.remove(tag);
                    });
                  },
                );
              }).toList(),
            ),

            //分割线

            Divider(
              color: Colors.grey,
              height: 36.0,
            ),

            //可交互的Actionchip，相当于按钮

            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _tags.map((tag) {
                return ActionChip(
                  label: Text(tag),
                  onPressed: () {
                    print(tag);
                  },
                );
              }).toList(),
            ),

            //分割线

            Divider(
              color: Colors.grey,
              height: 36.0,
            ),

            //用来展示过滤的效果

            Container(
              width: 300.0,
              child: Text('${_selected.toString()}'),
            ),

            //FilterChip 过滤

            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _tags.map((tag) {
                return FilterChip(
                  label: Text(tag),

                  //当前的chip是否选中的效果

                  selected: _selected.contains(tag),

                  onSelected: (value) {
                    setState(() {
                      if (_selected.contains(tag)) {
                        _selected.remove(tag);
                      } else {
                        _selected.add(tag);
                      }
                    });
                  },
                );
              }).toList(),
            ),

            //分割线

            Divider(
              color: Colors.grey,
              height: 36.0,
            ),

            //用来展示选中的效果

            Container(
              width: 300.0,
              child: Text('$_choice'),
            ),

            //ChoiceChip 选择

            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _tags.map((tag) {
                return ChoiceChip(
                  label: Text(tag),

                  //当前的chip是否选中的效果

                  selected: _choice == tag,

                  selectedColor: Colors.green,

                  onSelected: (value) {
                    setState(() {
                      _choice = tag;
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );



  }
}
