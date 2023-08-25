import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var Name=[
    "Contain1",
    "Contain2",
    "Contain3",
    "Contain4",
    "Contain5",
    "Contain6",
    "Contain7",
    "Contain8",
    "Contain9"
  ];
  var colors=[
    Colors.amber.shade100,
    Colors.amber.shade200,
    Colors.amber.shade300,
    Colors.amber.shade400,
    Colors.amber.shade500,
    Colors.amber.shade600,
    Colors.amber.shade700,
    Colors.amber.shade800,
    Colors.amber.shade900
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
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: double.infinity,
              color: colors[index],
              child: Text(Name[index]),
            );
          },
        ),
      ),
    );
  }
}

