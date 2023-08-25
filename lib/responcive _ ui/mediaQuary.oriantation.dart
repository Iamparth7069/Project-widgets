import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Quary',
      home: mypage(),
    );
  }
}

class mypage extends StatelessWidget {
  const mypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double boxHeight = size.height * 0.5;
    double boxWhight = size.width * 0.5;
    Orientation orientation = MediaQuery.of(context).orientation;
    print("rotate");
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Quary App Bar'),
        // ),
        body: Center(
      child: orientation == Orientation.portrait
          ? Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 196.3636,
                height:  196.3636,
                color: Colors.red,
                child: Text("The whidth is ${size.width}"),
              ),
              Container(
                width: boxWhight,
                height: boxWhight,
                color: Colors.green,
                child: Text("The Height is ${size.height}"),
              ),
            ])
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: boxHeight,
                  height: boxHeight,
                  color: Colors.red,
                  child: Center(child: Text("The whidth is ${size.width}")),
                ),
                Container(
                  width: boxHeight,
                  height: boxHeight,
                  color: Colors.green,
                  child: Center(child: Text("The Height is ${size.height}")),
                ),
              ],
            ),
    ));
  }
  //
  // buildLayoutWigits(double boxsize) {
  //   return [
  //     Container(
  //       height: boxsize,
  //       width: boxsize,
  //       color: Colors.blue,
  //       child: Text("The whidth is ${size.width}"),
  //     ),
  //     Container(
  //       height: boxsize,
  //       width: boxsize,
  //       color: Colors.lime,
  //     )
  //   ];
  // }
}
