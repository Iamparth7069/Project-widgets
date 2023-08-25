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
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20))
              ),

              width: 400,
              child: Text("Vyas Parth Rajeshbhai",style: TextStyle(fontSize: 30),)
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.lightGreenAccent.shade700,
              child: Column(
                children: [
                  Text("What is Flutter Flutter is an open source framework developed and supported by Google. Frontend and full-stack developers use Flutter to build an application's user interface (UI) for multiple platforms with a single codebase.When Flutter launched in 2018, it mainly supported mobile app development. Flutter now supports application development on six platforms: iOS, Android, the web, Windows, MacOS, and Linux",style: TextStyle(fontSize: 24,decoration: TextDecoration.underline,fontStyle: FontStyle.italic,wordSpacing: 2),maxLines: 8,textAlign: TextAlign.center,),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                    Column(
                      children: [
                        Icon(Icons.train, size: 30, color: Colors.lightBlue),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Train')
                      ],
                    ),
                     SizedBox(
                       height:10
                     ),
                     Column(
                       children: [
                         Icon(Icons.train, size: 30, color: Colors.lightBlue),
                         SizedBox(
                           height: 10,
                         ),
                         Text('Train')
                       ],
                     ),
                   ],
                 ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
