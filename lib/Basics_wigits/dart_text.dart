import 'package:flutter/material.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: SelectionArea(
        child: Text(
          "Hello I am Parth I am BCA Student And I am Also Knowlage to Data Strictyre Or algoritham I am Super Star And i am Statk",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              color: Colors.cyan,
              // letterSpacing: 2,
              wordSpacing: 2,
              decoration: TextDecoration.combine(
                  [TextDecoration.overline, TextDecoration.underline]),
              decorationColor: Colors.lightGreen,
              decorationThickness: 1,
              decorationStyle: TextDecorationStyle.dashed),
              textAlign: TextAlign.center,
              maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ))),
    );
  }
}
