import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Radiobutton(),
    );
  }
}
class Radiobutton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _radioButton();
}

class _radioButton extends State<Radiobutton>{
  var gender = "femail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Example"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("parth"),
            ),
            RadioListTile(
              title: Text("mail"),
              value: "male", groupValue: gender, onChanged: (value) {
                setState(() {
                  gender = value!;
                  print(gender);
                });
            },),
            RadioListTile(
              title: Text("femail"),
              value: "femail", groupValue: gender, onChanged: (value) {
              setState(() {
                gender = value!;
                print(gender);
              });
            },),
            RadioListTile(
              title: Text("other"),
              value: "other", groupValue: gender, onChanged: (value) {
              setState(() {
                gender = value!;
                print(gender);
              });
            },),
          ],
        ),
      ),
    );
  }
  
}

