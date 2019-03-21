import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//Row 横向布局
//Expanded 会平均分布
/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('水平方向布局'),
          backgroundColor: Colors.greenAccent,
        ),
        body: new Row(
          //横向布局
          //
          children: <Widget>[
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.deepOrange,
                child: new Text('DeepOrange'),
              ),
            ),
//            Expanded(
            new RaisedButton(
              onPressed: () {},
              color: Colors.pinkAccent,
              child: new Text('pinkAccent'),
            ),
//            ),
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.deepPurpleAccent,
                child: new Text('deepPurpleAccent'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

/* Column 垂直排列
  mainAxisAlignment 主轴对齐
  crossAxisAlignment 副轴对齐
*/
/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('垂直方向布局'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('111'),
              Text('2222222222222222'),
              Expanded(
                child: Text('33333333333333333333'),
              ),
              Text('444444'),
              Text('售后阿斯顿'),
            ],
          ),
        ),
      ),
    );
  }
}
*/

/**
 *    Stack 层叠布局
 *    alignment: const FractionalOffset(0.5, 0.8), //两个主键时使用
 *    CircleAvatar 圆形图片
 *    Positioned 准确定位
 * */

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              'http://img5.mtime.cn/mg/2019/03/21/175306.93440756_285X160X4.jpg'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.pinkAccent,
          ),
          padding: EdgeInsets.all(5),
          child: Text('这是啥'),
        ),
        new Positioned(
          top: 10.0,
          left: 10.0,
          child: new Text("Positioned"),
        ),
        new Positioned(
          bottom: 10.0,
          right: 20.0,
          child: new Text('0000000000'),
        )
      ],
    );

    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('垂直方向布局'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
*/
/**
 *  卡片布局 Card
 *   Divider 分割线
 * */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('吉林省xxxxxxxxxxxxxxx', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('电话 188000088888'),
            leading: new Icon(Icons.accessible, color: Colors.lightBlue,),

          ),
          new Divider(color: Colors.deepPurple),
          ListTile(
            title: Text('北京市xxxxxxxxxxxxxxx', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('电话 155888777'),
            leading: new Icon(Icons.accessibility, color: Colors.red,),

          ),
          new Divider(color: Colors.amber),
          ListTile(
            title: Text('黑龙江xxxxxxxxxxxxxxx', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('电话 1877000002222'),
            leading: new Icon(Icons.ac_unit, color: Colors.greenAccent,),
          ),
          new Divider(color: Colors.pinkAccent),
        ],
      ),
    );
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('垂直方向布局'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: card,
        ),
      ),
    );
  }
}