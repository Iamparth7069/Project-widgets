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
        child: Row(
          /*mainAxisAlignment: MainAxisAlignment.spaceBetween,*/
          children: [
            /*Expanded(
              child: Container(
                color: Colors.blue,
                height: 50,
                width: 120,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                height: 50,
                width: 120,
              ),
            ),*/
            Icon(Icons.menu, color: Colors.orange,size: 30),
            Expanded(child: Container()),
            Icon(Icons.more_vert, color: Colors.orange,size: 30),
            // Expanded(
            //   flex: 2,
            //   child: ElevatedButton(onPressed: () {
            //
            //   }, child: Text('Button1'),),
            // ),
            // SizedBox(width: 20,),
            // Expanded(
            //   child: ElevatedButton(onPressed: () {
            //
            //   }, child: Text('Button2'),),
            // )

          ],
        ),
      ),
    );
  }
}
