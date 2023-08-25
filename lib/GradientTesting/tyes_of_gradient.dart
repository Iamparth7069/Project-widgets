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
        body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0,1,0],
                    colors: [
                      Colors.yellow,
                      Colors.white,
                      Colors.red
                    ]
                  )
                ),
              ),
          Center(
            child: Container(
              child: Text('Hello World'),
            ),
          ),
        ]),
      ),
    );
  }
}
