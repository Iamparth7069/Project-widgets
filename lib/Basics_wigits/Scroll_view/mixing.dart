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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.yellow,
                        
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 400,
                width: 400,
                color: Colors.black,
              )
            ],
          ),
        )
      ),
    );
  }
}
