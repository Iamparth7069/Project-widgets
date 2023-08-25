import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.white,
              ),
              Container(
                height: 280,
                width: 280,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors :[
                      Colors.green.shade700,
                      Colors.green.shade400,
                      Colors.green.shade500,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  )
                ),
              ),
              Positioned(bottom: 10,child: Text("Wecome To parth"))
            ],
          )
        ),
      ),
    );
  }
}
