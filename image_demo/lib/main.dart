import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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