import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> number = [
    "1",
    "2",
    "3",
    "4",
    "5"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
              children: [
                Row(
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      children:  List.generate(number.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.amber,
                              gradient: RadialGradient(
                                stops: [1,2],
                                colors: [
                                  Colors.black,
                                  Colors.yellow,
                                ]
                              )
                            ),
                            child: Center(child: Text(number[index],style: TextStyle(color: Colors.yellow)),),
                          ),
                        );
                      },)
                    )
                  ],
                )
              ],
          ),
        )
      ),
    );
  }
}
