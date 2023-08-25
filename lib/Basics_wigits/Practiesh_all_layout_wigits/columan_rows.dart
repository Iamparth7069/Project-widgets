import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
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
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  color: Colors.pinkAccent,
                  child: Text("Hello"),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  color: Colors.cyanAccent,
                  child: Text("Hello"),
                ),
              ],
              ),
            Container(
              alignment: Alignment.center,
              height: 70,
              width: 70,
              color: Colors.pinkAccent,
              child: Text("Hello"),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  color: Colors.pinkAccent,
                  child: Text("Hello"),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}
