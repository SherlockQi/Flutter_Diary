import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp());

/* 图片
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text widget',
      home: Scaffold(
        body: Center(
          child: Container(
            child: new Image.network(
                  'https://avatars3.githubusercontent.com/u/18034763?s=40&v=4',
//              color: Colors.red, //混合颜色
//              colorBlendMode: BlendMode.modulate,//混合模式
//              fit: BoxFit.fitHeight, //填充模式
            repeat: ImageRepeat.repeatX, //重复模式


            ),
            width: 300.0,
            height: 200,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
*/
/* List
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text widget',
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.lightBlue,   title: new Text("ListView Demo"),
        ),
        body: Center(
          child: Container(
            height: 200.0,
            child: new myTableView(),
          ),
        )
        ),
      );
  }
}

// ignore: camel_case_types
class myTableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.red,
        ),  new Container(
          width: 180.0,
          color: Colors.blueAccent,
        ),  new Container(
          width: 180.0,
          color: Colors.greenAccent,
        ),  new Container(
          width: 180.0,
          color: Colors.red,
        ),  new Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
      ],
    );
  }
}
*/

/* 动态列表

void main() =>
    runApp(MyApp(

        items: new List<String>.generate(1000, (i) => "Item $i")
    ));

class MyApp extends StatelessWidget {

  final List<String> items;

  MyApp({Key key, @required this.items}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text widget',
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.red, title: new Text("ListView Demo"),
        ),
        body:
        new ListView.builder(
          itemCount: 1000,
          itemBuilder: (context, index) {
            return new ListTile(
              subtitle: Image.network('https://avatars3.githubusercontent.com/u/18034763?s=40&v=4'),
              title: new Text('${items[index]}'),

            );
          },
        ),
      ),
    );
  }
}
*/

/* 表格
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text widget',
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.red, title: new Text("ListView Demo"),
        ),
        body:GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //每行数量
            mainAxisSpacing: 4.0, //行间距
            crossAxisSpacing: 2.0, //列间距
            childAspectRatio: 1.0,//宽高比
          ),
          children: <Widget>[
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/174222.95651113_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/161509.75835860_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/175306.93440756_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/174222.95651113_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/03/21/162008.66794827_285X160X4.jpg',fit: BoxFit.cover),

          ],
        )
      ),
    );
  }
}
*/