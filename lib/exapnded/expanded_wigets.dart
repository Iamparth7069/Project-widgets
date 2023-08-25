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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.lime,
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.orangeAccent,
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.black54,
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blueAccent,
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.lime,
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.cyanAccent,
                ),
              ),
            ],
          )),
    );
  }
}
