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
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
