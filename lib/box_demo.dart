/*
* 常用盒子容器示例
* */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 40,

            alignment: Alignment.bottomCenter,
            child: Text('普通容器',style: TextStyle(color: Colors.blue)),

          ),
          Container(
            width: 200,
            height: 60,
            child: Text(
              '宽度最大，高度最大，方便与指定大小容器做比较',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
          ),
          //加个距离
          Container(
            height: 40,

            alignment: Alignment.bottomCenter,

            child: Text('指定大小容器',style: TextStyle(color: Colors.blue),),
          ),

          //指定大小的盒子，限定其最大最小宽高
          ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 20.0,
              maxHeight: 60.0,
              minWidth: 100.0,
              maxWidth: 200.0,
            ),
            child: Container(
              width: 300,
              height: 500,
              child: Text(
                '看看宽高超过限定了，会怎样',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.green,
            ),
          ),
          Container(
            height: 40,

            alignment: Alignment.bottomCenter,
            child: Text('装饰容器',style: TextStyle(color: Colors.blue),),
          ),
          Container(
            width: 100.0,
            height: 100.0,
            //添加装饰
            child: DecoratedBox(
              //装饰定位
              position: DecorationPosition.background,
              decoration: BoxDecoration(
                //背景色
                color: Colors.grey,
                //设置背景图片
                image: DecorationImage(
                  //图片填充方式
                  fit: BoxFit.cover,
                  image: ExactAssetImage('assets/huazai.jpg'),
                ),

                //borderRadius: BorderRadius.circular(150.0),

                //边框
                border: Border.all(
                  color: Colors.yellow,
                  width: 5.0,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Container(
            height: 40,

            alignment: Alignment.bottomCenter,
            child: Text('溢出容器',style: TextStyle(color: Colors.blue),),
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(10.0),
            //溢出容器
            child: OverflowBox(
              //对齐方式
              alignment: Alignment.topLeft,
              //限定条件
              maxHeight: 200.0,
              maxWidth: 200.0,
              child: Container(
                color: Colors.blueGrey,
                width: 150.0,
                height: 150.0,
              ),
            ),
          ),
          SizedBox(
            height: 60,

          ),
          Container(
            height: 40,

            alignment: Alignment.bottomCenter,
            child: Text('旋转容器',style: TextStyle(color: Colors.blue),),
          ),
          RotatedBox(
            //旋转次数，每次旋转一圈的1/4
              quarterTurns: 1,
              child: Text(
                '天干地支',
                style: TextStyle(fontSize: 28),
              )),
          SizedBox(
            height: 40.0,
          ),
          RotatedBox(
              quarterTurns: 2,
              child: Text(
                '天干地支',
                style: TextStyle(fontSize: 28),
              )),
          //填充容器

          /*
              * BoxFit.fill
              * 全部显示，显示可拉伸，充满
              * BoxFit.fill
              * 全部显示，显示可拉伸，充满
              *
              * */

          Container(
            height: 40,

            alignment: Alignment.bottomCenter,
            child: Text('填充容器',style: TextStyle(color: Colors.blue),),
          ),
          Container(
            width: 300.0,
            height: 300.0,
            child: FittedBox(
              //填充类型
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
              child: Image.asset('assets/huazai.jpg'),
            ),
          ),
          //指定宽高容器，child不允许超出指定大小范围
          Container(
            height: 40,

            alignment: Alignment.bottomCenter,
            child: Text('指定宽高容器',style: TextStyle(color: Colors.blue),),
          ),
          SizedBox(
            width: 200.0,
            height: 200.0,
            child: Image.asset('assets/huazai.jpg'),
          ),
        ],
      ),
    );
  }
}