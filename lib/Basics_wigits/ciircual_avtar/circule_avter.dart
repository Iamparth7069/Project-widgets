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
        body: Center(
          child:   CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 200,
            child: CircleAvatar(
              radius: 200,
              backgroundImage: AssetImage("images/tiger.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
