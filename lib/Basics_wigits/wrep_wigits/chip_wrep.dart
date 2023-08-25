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
        body: Container(
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 5,
            spacing: 25,
            children: [
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text("Ab"),
                ),
                label: Text("armoon"),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text("Ab"),
                ),
                label: Text("armoon"),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text("Ab"),
                ),
                label: Text("armoon"),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text("Ab"),
                ),
                label: Text("armoon"),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text("Ab"),
                ),
                label: Text("armoon"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
