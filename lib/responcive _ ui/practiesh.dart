import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: thetesting(),
    );
  }
}

class thetesting extends StatelessWidget {
  List<Color> colors = [
    Colors.red,
    Colors.white,
    Colors.cyanAccent,
    Colors.yellowAccent,
    Colors.tealAccent,
    Colors.lightBlue.shade900,
    Colors.orange,
    Colors.yellow.shade500,
    Colors.red,
    Colors.white,
    Colors.cyanAccent,
    Colors.yellowAccent,
    Colors.tealAccent,
    Colors.lightBlue.shade900,
    Colors.orange,
    Colors.yellow.shade500,
    Colors.red,
    Colors.white,
    Colors.cyanAccent,
    Colors.yellowAccent,
    Colors.tealAccent,
    Colors.lightBlue.shade900,
    Colors.orange,
    Colors.yellow.shade500
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    double boxheight = size.height;
    double boxWhidth = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return Container(
            height : orientation == Orientation.portrait ? 300 : 100,
            width: Orientation == Orientation.portrait ? 100 : MediaQuery.of(context).size.width,
            child: GridView.builder(
              scrollDirection: orientation == Orientation.portrait ? Axis.vertical : Axis.horizontal,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 3 : 1,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5
            ),itemCount: colors.length, itemBuilder: (context, index) {
              return Container(
                color: colors[index],
              );
            },),
          );
        },
      ),
    );
  }
}
