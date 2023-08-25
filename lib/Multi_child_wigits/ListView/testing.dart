import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var Names=[
    "Parth",
    "Parthi",
    "Rajeshbhai",
    "Geeta",
    "raje",
    "vedant",
    "mama",
    "mami",
    "nanima",
    "rudraksh"
  ];
  var marks=[
    "10","20","30","40","50","60","70","80","90","100"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.builder(
          reverse: true,
          padding: EdgeInsets.all(10),
          physics: BouncingScrollPhysics(),
          // scrollDirection: Axis.horizontal,
          itemCount: Names.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 200,
              color: Colors.cyan,
              child: Center(child: Text("The Name is ${Names[index]} \n The Marks is ${marks[index]}")),
            );
          },
        )
      ),
    );
  }
}
