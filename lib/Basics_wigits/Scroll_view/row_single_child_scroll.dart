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
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.teal,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blueAccent,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.yellowAccent,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.lightGreen,
              )
            ],
          ),
        )
      ),
    );
  }
}
