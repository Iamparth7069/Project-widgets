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
        body: Center(
          child: Stack(
            fit: StackFit.loose,
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
                ),
              ),
              Positioned(
                bottom: 0,
                right: 25,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurpleAccent
                  ),
                  child: Icon(Icons.add,size: 50,color: Colors.white),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
