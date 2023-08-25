import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Expanded Widget',
        home: ExpandedWidgetExample()
    );
  }
}


class ExpandedWidgetExample extends StatelessWidget {
  const ExpandedWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.green,
                child: Text('Tops Tech'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 300,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 300,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
