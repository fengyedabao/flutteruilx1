/*
* 卡片
* */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(


      child: Card(


        color: Colors.green,
        elevation: 20,
        margin: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            const ListTile(
              autofocus: true,
              leading: Icon(Icons.shopping_cart, color: Colors.white,),
              title: Text('苹果电脑MacBoolPro',
                style: TextStyle(fontSize: 38, color: Colors.white),),

              subtitle: Text('配置为32核，32G内存',
                style:TextStyle(color: Colors.white,fontSize: 16),),
              contentPadding: EdgeInsets.all(20),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(onPressed: (){}, child: Text('确认')),
                FlatButton(onPressed: (){}, child: Text('取消')),
              ],
            )


          ],
        ),
      ),
    );
  }

}
