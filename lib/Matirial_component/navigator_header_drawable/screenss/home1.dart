import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is Matirial page")),
      body: Center(
        child: Column(
          children: [
            Text("This is Home Page"),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Press To Matirial Page"))
          ],
        ),
      )
    );
  }
}
