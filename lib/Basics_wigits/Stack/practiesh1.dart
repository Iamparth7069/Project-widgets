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
          child: Container(
            height: 400,
            width: 400,
            color: Colors.redAccent,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 350,
                  width: 350,
                  color: Colors.yellowAccent,
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.green,
                ),
                Container(
                  height: 250,
                  width: 250,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.black87,
                ),
                Positioned(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
