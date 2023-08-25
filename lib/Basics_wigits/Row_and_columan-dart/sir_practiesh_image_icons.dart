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
        body:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.flight, size: 30, color: Colors.lightBlue),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Airplane')
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.train, size: 30, color: Colors.lightBlue),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Train')
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
