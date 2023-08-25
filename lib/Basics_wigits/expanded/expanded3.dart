import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WrepTest(),
    );
  }
}
class WrepTest extends StatelessWidget {
  const WrepTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Wrep Wigits"),),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 50,
                color: Colors.lime,
              ),
              // SizedBox(
              //   width: 208,
              // ),
              Container(
                height: 100,
                width: 50,
                color: Colors.orangeAccent,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.black54,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.lime,
              ),
              // SizedBox(
              //   width: 208,
              // ),
              Container(
                height: 100,
                width: 50,
                color: Colors.orangeAccent,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.black54,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.lime,
              ),
              // SizedBox(
              //   width: 208,
              // ),
              Container(
                height: 100,
                width: 50,
                color: Colors.orangeAccent,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.black54,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
