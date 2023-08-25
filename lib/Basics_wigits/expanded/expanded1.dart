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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
