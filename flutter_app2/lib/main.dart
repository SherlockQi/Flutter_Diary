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
            child: new Text(
              'Text Good',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
            alignment: Alignment.topLeft,
            width: 300.0,
            height: 400.0,
//            color: Colors.lightBlue,
            padding: const EdgeInsets.fromLTRB(20, 30, 40, 50),
            margin: const EdgeInsets.fromLTRB(30, 40, 50, 60),
            decoration: new BoxDecoration(
              gradient:  const LinearGradient(
                  colors: [Colors.lightBlue,Colors.redAccent,Colors.greenAccent]
              ),
              border: Border.all(width: 2.0,color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
