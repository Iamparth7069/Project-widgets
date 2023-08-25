import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var colorList = [
    Colors.amber.shade900,
    Colors.amber.shade800,
    Colors.amber.shade700,
    Colors.amber.shade600,
    Colors.amber.shade500,
    Colors.amber.shade400,
    Colors.amber.shade300,
    Colors.amber.shade200,
    Colors.amber.shade100,
    Colors.amber.shade50,
  ];
  var nameList = [
    'Entry-A',
    'Entry-B',
    'Entry-C',
    'Entry-D',
    'Entry-E',
    'Entry-F',
    'Entry-G',
    'Entry-H',
    'Entry-I',
    'Entry-J',
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
            itemCount: nameList.length,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                color: colorList[index],
                child: Text(nameList[index]),
              );
            },
          )),
    );
  }
}
