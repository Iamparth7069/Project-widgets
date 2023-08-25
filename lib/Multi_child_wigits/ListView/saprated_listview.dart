import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var Name=[
    "Block A",
    "Block B",
    "Block c",
    "Block d",
    "Block e",
    "Block f",
    "Block g",
    "Block h",
    "Block i",
    "Block k",
  ];
  var bcode=[
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: ListView.separated(
              itemCount: Name.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Text("Hello I am ${Name[index]} And Code is ${bcode[index]}"),
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white,
                  child: Center(child: Text("$index", style: TextStyle(
                    fontSize: 30
                  ),)),
                );
              },
              )),
    );
  }
}
