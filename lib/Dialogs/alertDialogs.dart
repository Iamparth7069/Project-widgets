import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: check12()
    );
  }
}
class check12 extends StatefulWidget {
  const check12({Key? key}) : super(key: key);

  @override
  State<check12> createState() => _check12State();
}

class _check12State extends State<check12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () async {
              var result = await alertDialogs(context);
              print(result);
            }, child: Text("Exit This App"))
          ],
        ),
      ),
    );
  }

  Future<dynamic> alertDialogs(BuildContext context) {
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.teal,

        title: Text("LogOut"),
        icon: Icon(Icons.circle),
        content: Text("Logout To This Users"),
        actions: [
          TextButton(onPressed: () {
              Navigator.pop(context,"Logout");
          }, child:Text("LogOut")),
          TextButton(onPressed: () {
            Navigator.pop(context,"Null");
          }, child: Text("Cancels"))
        ],
      );
    },);
  }
}

