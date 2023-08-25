import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 50,
                    color: Colors.lightGreenAccent,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.black,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 250,
                        color: Colors.pink,
                        child: Center(child: Text("Hello i am parth",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20,),)),
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        color: Colors.pink,
                        child: Center(child: Text("Hello i am parth",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20,),)),
                      ),
                    ],
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
