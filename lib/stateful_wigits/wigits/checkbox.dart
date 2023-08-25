import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: checkbox(),
    );
  }
}

class checkbox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _checkboxpage();
}

class _checkboxpage extends State<checkbox> {
  bool check = false;
  bool second = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box "),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          // CheckboxListTile(
          //   subtitle: Text("Hobbies"),
          //   title: Text("Cricket"),
          //   value: check,
          //   onChanged: (value) {
          //     setState(() {
          //       check = value!;
          //     });
          //   },
          // ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            subtitle: Text("Hobbies"),
              title: Text("Cricket"),
              value: check,
              onChanged: (value) {
                setState(() {
                  check = value!;
                });
              }),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text("Hobbies"),
              title: Text("Vollyboll"),
              value: second,
              onChanged: (value) {
                setState(() {
                  second = value!;
                });
              }),
        ],
      ),
    );
  }
}
