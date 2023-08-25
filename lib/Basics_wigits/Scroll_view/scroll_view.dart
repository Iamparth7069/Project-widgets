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
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 300,
                width: 100,
                color: Colors.amber
                ,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.deepOrange,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.amberAccent,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.deepOrange,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.amberAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
