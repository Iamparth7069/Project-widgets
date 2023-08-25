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
        body:
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.redAccent),
            child: Text("Parth vays"),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.redAccent),
            child: Text("Parthi vyas"),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.redAccent),
            child: Text("Rajesh vyas"),
          ),
        ]),
      ),
    );
  }
}
