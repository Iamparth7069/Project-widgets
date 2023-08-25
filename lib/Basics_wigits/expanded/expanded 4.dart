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
            width: 500,
            height: 500,
            color: Colors.black,
            child:Wrap(
              direction: Axis.vertical,
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.end,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orangeAccent
                ),
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.red
                ),
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.amberAccent
                ),
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.orangeAccent
                ),

              ],
            ),
          ),
        )
      ),
    );
  }
}
