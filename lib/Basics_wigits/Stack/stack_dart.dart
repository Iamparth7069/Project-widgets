import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -0,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple
                      ),
                      child: Icon(Icons.add,size: 20,color: Colors.white,),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -0,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pink
                      ),
                      child: Icon(Icons.add,size: 20,color: Colors.white,),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
