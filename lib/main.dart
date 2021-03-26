import 'package:flutter/material.dart';


import 'bottom_native.dart';
import 'box_demo.dart';
import 'button_demo.dart';
import 'card_demo.dart';
import 'check_box_demo.dart';
import 'chip_demo.dart';
import 'dropDownBotton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter控件练习',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _tabController;

  //界面创建时
  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    //长度和展示部分的tab数一致
    _tabController = new TabController(length: 7, vsync: this);
  }

  //界面移除时
  @override
  void dispose() {
    _scrollViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //setstate调用时，界面会重新运行
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //标题栏
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text(widget.title),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.remove),
        ],
        //标题栏底部
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: '数字提示',
              icon: Icon(Icons.cake),
            ),
            Tab(
              text: '容器',
              icon: Icon(Icons.ten_k),
            ),
            Tab(
              text: '按钮',
              icon: Icon(Icons.favorite_border),
            ),
            Tab(
              text: '卡片',
              icon: Icon(Icons.card_giftcard),
            ),
            Tab(
              text: '选择控件',
              icon: Icon(Icons.check_box),
            ),
            Tab(
              text: 'chip组件',
              icon: Icon(Icons.bolt),
            ),
            Tab(
              text: '4',
              icon: Icon(Icons.radio_button_on),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),

          //容器
          BoxDemo(),

          //按钮
          ButtonDemo(),

           //卡片
           CardDemo(),


          CheckBoxDemo(),

          ChipDemo(),
          Text('占位4'),
        ],
      ),

      bottomNavigationBar: BottomNative(),

      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          // onPressed: _incrementCounter,

          //匿名函数
          onPressed: () {
            //更新界面
            setState(() {
              _counter++;
            });

            final snackBar = new SnackBar(
              content: Text("数字到$_counter"),
              backgroundColor: Colors.green,
              duration: Duration(seconds: 1),
            );

            Scaffold.of(context).showSnackBar(snackBar);
          },

          tooltip: 'Increment',
          child: Icon(Icons.add),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
