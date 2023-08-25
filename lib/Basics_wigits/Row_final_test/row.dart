import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          color: Colors.deepOrange,
          height: 1000,
          width: 1000,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 300,
                width: 100,
                color: Colors.amberAccent,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.blueAccent,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
