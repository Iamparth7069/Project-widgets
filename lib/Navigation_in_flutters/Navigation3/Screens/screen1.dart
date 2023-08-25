import 'package:flutter/material.dart';
class screen1 extends StatelessWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: Text("Push To Second Page"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: Text("PushtoRemoveUntil"),
            ),

          ],
        ),
      ),
    );
  }
}
