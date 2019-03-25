import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "导航演示01", home: new FirstScreen()));
}
/*
*
* RaisedButton 凸起按钮
*
* push 下一页
* Navigator.push(
*                 context,
*                 MaterialPageRoute(builder: (context) => SecondScreen()),
*                 );
*
* 返回上一页
* Navigator.pop(context);
*
* **/

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('查看详情页'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二页'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: RaisedButton(
            onPressed: (){
                  Navigator.pop(context);
              },
          child: Text('返回'),
        ),
      ),
    );
  }
}
