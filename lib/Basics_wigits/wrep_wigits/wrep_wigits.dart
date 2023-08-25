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
            width: double.infinity,
              height: 400,// sit this is bydefult whigth is min
            // color: Colors.yellow,
            child: Wrap(
              spacing: 20,// directon depend
              runSpacing: 20,
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceEvenly, // horizontal
              runAlignment: WrapAlignment.start, // vertical
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightBlueAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.pinkAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
