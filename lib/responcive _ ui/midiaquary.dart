import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: mediaTest(),
    );
  }
}

class mediaTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Ui App Bar'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: size.height / 2,
          width: size.width /2,
          color: Colors.limeAccent,
          child: Text('''
            screens height : ${size.height}
            screens whight : ${size.width}''', style: TextStyle(fontSize: size.height * 0.04),),
        ),
      ),
    );
  }
}
