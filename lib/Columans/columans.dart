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
          width: 550,
          color: Colors.purple,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 200,
                width: 100,
                child: Text("Hello"),
                color: Colors.amberAccent,
              ),
              Container(
                height: 200,
                width: 100,
                child: Text("Good"),
                color: Colors.black12,
              ),
              Container(
                height: 200,
                width: 100,
                child: Text("Mornings"),
                color: Colors.purpleAccent,
              ),
            ],
          ),
        )
      ),
    );
  }
}
