import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: check(),
    );
  }
}
class check extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => checkbox_page();

}
class checkbox_page extends State<check>{
  Map<String , bool> values={
    "apple" : false,
    "Mi" : false,
    "samsung" : false,
    "oppo" : false,
    "vivo" : false,
  };
  var tempArray=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("CheckBox"),
      ),
      body: Column(
        children: <Widget>[
          CheckboxListTile(
            onChanged: (value) {

            },
            value: true,
          )
        ],
      ),
    );
  }

}

