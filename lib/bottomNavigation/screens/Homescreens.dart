import 'package:flutter/material.dart';

class Homescreens extends StatelessWidget {
  const Homescreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("This Is Home Screens"),
        ),
      ),
    );
  }
}
