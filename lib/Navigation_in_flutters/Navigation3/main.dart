import 'package:flutter/material.dart';
import 'package:project/Navigation_in_flutters/Navigation3/Screens/screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: screen1(),
    );
  }
}
