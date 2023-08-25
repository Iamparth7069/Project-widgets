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
            child: GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisCount: 4,
              scrollDirection: Axis.horizontal,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(
                  color: Colors.purpleAccent,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.lightBlue,
                ),
                Container(
                  color: Colors.tealAccent,
                ),
                Container(
                  color: Colors.limeAccent,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.purpleAccent,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.lightBlue,
                ),
                Container(
                  color: Colors.tealAccent,
                ),
                Container(
                  color: Colors.limeAccent,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.black,
                ),
              ],
            ),
          )),
    );
  }
}
