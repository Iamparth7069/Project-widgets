import 'package:flutter/material.dart';

class setting extends StatelessWidget {
  const setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("This is Setting  page")),
        body: Center(
          child: Column(
            children: [
              Text("This is Setting Page"),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("Press To Matirial Page"))
            ],
          ),
        )
    );
  }
}
