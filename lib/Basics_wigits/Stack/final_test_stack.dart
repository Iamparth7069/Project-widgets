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
            padding: EdgeInsets.all(10),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                    left: 20,
                    child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                )),
                Positioned(
                  top: 100,
                    left: 80,
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.yellow,
                    )),
                Positioned(
                    top: 150,
                    left: 140,
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.purple,
                    )),
                Positioned(
                    top: 200,
                    left: 190,
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.lightGreenAccent,
                    )),
              ],
            ),
          )),
    );
  }
}
