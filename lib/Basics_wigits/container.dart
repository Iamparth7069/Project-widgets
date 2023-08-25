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
              child: Container(
            padding: EdgeInsets.all(10),
            height: 200,
            width: 200,
            alignment: Alignment.center,

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(10),
              // borderRadius: BorderRadius.vertical(
              //     bottom: Radius.circular(10), top: Radius.circular(20)),
              color: Colors.green,
              border: Border.all(width: 15, style: BorderStyle.solid),
              // border: Border(
              //   right: BorderSide(
              //     color: Colors.lightBlue,
              //     width: 2,
              //   ),
              //   left: BorderSide(
              //     color: Colors.limeAccent,
              //     width: 2 ,
              //   )
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  spreadRadius: 20,
                  blurRadius: 20,
                )
              ],
              gradient: LinearGradient(
                colors: [
                  Colors.redAccent.shade700,
                  Colors.redAccent.shade400,
                  Colors.redAccent.shade200,
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                tileMode: TileMode.repeated,
              ),
            ),
            child: Text(
              "Hello i am Parth ",
              style: TextStyle(color: Colors.black),
            ),
          ))),
    );
  }
}
