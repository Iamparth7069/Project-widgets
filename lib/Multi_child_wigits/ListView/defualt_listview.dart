
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
        body: ListView(
          padding: EdgeInsets.all(10),
          reverse: false,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: Text("Entry 1"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Entry 2"),
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              color: Colors.green,
              child: Text("Entry 3"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.grey,
              child: Text("Entry 4"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.limeAccent,
              child: Text("Entry 5"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purpleAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.tealAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.cyan,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
