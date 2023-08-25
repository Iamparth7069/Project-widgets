import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: simpalDialogs()
    );
  }
}
class simpalDialogs extends StatefulWidget {
  const simpalDialogs({Key? key}) : super(key: key);

  @override
  State<simpalDialogs> createState() => _simpalDialogsState();
}

class _simpalDialogsState extends State<simpalDialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () async{
              var check=await showSimpleDialogs(context);
              print(check);
            },
            child: Text("Simple Dialogs"),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showSimpleDialogs(BuildContext context) {
    return showDialog(context: context, builder: (context) {
      return SimpleDialog(
        title: Text("Selected Lengvages"),
        children: [
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context,"Java");
            },
            child: Text("Java"),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context,"Kotlins");
            },
            child: Text("Kotlins"),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context,"Dart");
            },
            child: Text("Dart"),
          ),
        ],
      );
    },);
  }
}

