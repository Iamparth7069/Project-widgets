import 'package:flutter/material.dart';
import 'package:project/Navigation_in_flutters/Navigation/screens/first_screens.dart';

void main() => runApp(testing());

class testing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: navigator(),
    );
  }
}
class navigator extends StatelessWidget {
  const navigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => firstapp(),));
          },
            child: Text("Enter To Second Screens"),
          ),
        ),
      ),
    );
  }
}

