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
            height: 400,
            width: 400,
            child: Stack(
              children: [
                Container(
                  height: 400,
                  width: 400,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("This is Green Container"),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.red,
                    child: Text("This is Rad Containers "),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 30,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.purple,
                    child: Text("This is Rad Containers"),
                  ),
                ),
                Positioned(
                  top: 230,
                  right: 30,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.white60,
                    child: Text("This is Whaite Containers"),
                  ),
                ),
                Positioned(
                  top: 230,
                  left: 50,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.pink,
                    child: Text("This is pinck Containers "),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
