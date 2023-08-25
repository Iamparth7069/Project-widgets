import 'package:flutter/material.dart';
import 'package:project/Navigation_in_flutters/Navigation3/Screens/screen3.dart';

class secons_screens extends StatelessWidget {
  const secons_screens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: second(),
    );
  }
}
class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second page")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => screens_3(),));
            },
            child: Text("The Thires Screens"),
          ),
        ],  
      ),
    );
  }
}

