import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var Colors1 = [
    Colors.limeAccent,
    Colors.black,
    Colors.grey,
    Colors.tealAccent,
    Colors.green,
    Colors.lime,
    Colors.purple,
    Colors.blueAccent,
    Colors.red,
    Colors.greenAccent
  ];
  var Names=[
    "Container1",
    "Container2",
    "Container3",
    "Container4",
    "Container5",
    "Container6",
    "Container7",
    "Container8",
    "Container9",
    "Containre10"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: GridView.builder(
          itemBuilder: (context, index) {
            return Container(
              color: Colors1[index],
              child: Center(child: Text("The Name is ${Names[index]}")),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
          itemCount: Colors1.length,
          padding: EdgeInsets.all(10),
        ),
          // Gridview.bilder(run time bild for wigits)
      ),
    );
  }
}
