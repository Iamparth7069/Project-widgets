import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var colors = [
    Colors.orange,
    Colors.cyan,
    Colors.amber,
    Colors.tealAccent,
    Colors.green,
    Colors.purpleAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: GridView.count(
          padding: EdgeInsets.all(10),
          // mainAxisSpacing: 3,
          scrollDirection: Axis.vertical,
            mainAxisSpacing: 5,
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            children: [
              Container(
                color: colors[0],
                child: Text("Color1"),
              ),
              Container(
                color: colors[1],
                child: Text("Color2"),
              ),
              Container(
                color: colors[2],
                child: Text("Color2"),
              ),
              Container(
                color: colors[3],
                child: Text("Color3"),
              ),
              Container(
                color: colors[4],
                child: Text("Color4"),
              ),
              Container(
                color: colors[5],
                child: Text("Color5"),
              ),
              Container(
                color: colors[5],
                child: Text("Color5"),
              ),
              Container(
                color: colors[0],
                child: Text("Color1"),
              ),
              Container(
                color: colors[1],
                child: Text("Color2"),
              ),
              Container(
                color: colors[2],
                child: Text("Color2"),
              ),
              Container(
                color: colors[3],
                child: Text("Color3"),
              ),
              Container(
                color: colors[4],
                child: Text("Color4"),
              ),
              Container(
                color: colors[5],
                child: Text("Color5"),
              ),
              Container(
                color: colors[5],
                child: Text("Color5"),
              ),
              Container(
                color: colors[0],
                child: Text("Color1"),
              ),
              Container(
                color: colors[1],
                child: Text("Color2"),
              ),
              Container(
                color: colors[2],
                child: Text("Color2"),
              ),
              Container(
                color: colors[3],
                child: Text("Color3"),
              ),
              Container(
                color: colors[4],
                child: Text("Color4"),
              ),
              Container(
                color: colors[5],
                child: Text("Color5"),
              ),
              Container(
                color: colors[5],
                child: Text("Color5"),
              ),
              Container(
                color: colors[0],
                child: Text("Color1"),
              ),
              Container(
                color: colors[1],
                child: Text("Color2"),
              ),
              Container(
                color: colors[2],
                child: Text("Color2"),
              ),
              Container(
                color: colors[3],
                child: Text("Color3"),
              ),
              Container(
                color: colors[4],
                child: Text("Color4"),
              ),
              Container(
                color: colors[5],
                child: Text("Color5"),
              ),
              Container(
                color: colors[5],
                child: Text("Color5"),
              ),
            ],
        ),
      ),
    );
  }
}
