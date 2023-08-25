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
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.purple),
                    ),
                    Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amberAccent),
                    ),
                    Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent),
                    ),
                    Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow),
                    ),
                  ],
                ),
               SizedBox(
                 height: 10,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Container(
                     height: 200,
                     width: 60,
                     decoration: BoxDecoration(
                         color: Colors.red,
                       borderRadius: BorderRadius.vertical(top: Radius.circular(20),bottom: Radius.circular(20))
                     ),
                   ),
                   Container(
                     height: 200,
                     width: 60,
                     decoration: BoxDecoration(
                         color: Colors.green,
                         borderRadius: BorderRadius.vertical(top: Radius.circular(20),bottom: Radius.circular(20))
                     ),
                   ),
                   Container(
                     height: 200,
                     width: 60,
                     decoration: BoxDecoration(
                         color: Colors.yellow,
                         borderRadius: BorderRadius.vertical(top: Radius.circular(20),bottom: Radius.circular(20))
                     ),
                   ),
                 ],
               ),
                SizedBox(
                  height: 10,
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     height: 200,
                     width: 70,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.indigo
                     ),
                   ),
                   Container(
                     child: Center(child: Text("Hello",style: TextStyle(
                       decoration: TextDecoration.underline,
                       fontSize: 30,
                     ),)),
                     height: 50,
                     width: 100,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.lightGreenAccent
                     ),
                   ),
                   Container(
                     child: Center(child: Text(" Parth",style: TextStyle(
                       decoration: TextDecoration.underline,
                       fontSize: 30,
                     ),)),
                     height: 50,
                     width: 100,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.brown
                     ),
                   ),
                   Container(
                     height: 200,
                     width: 70,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.deepPurpleAccent
                     ),
                   ),
                 ],
               ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  child: Center(
                    child: Text("Tops Technology",style: TextStyle(
                      fontSize: 40,inherit: false,color: Colors.black
                    ),),
                  ),
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  child: Center(
                    child: Text("Welcome TO Flutter",style: TextStyle(
                        fontSize: 40,inherit: false,color: Colors.black
                    ),),
                  ),
                  width: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: Center(
                    child: Text("Row And Columan",style: TextStyle(
                        fontSize: 40,inherit: false,color: Colors.black
                    ),),
                  ),
                  width: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink
                  ),
                )
              ],
            ),
          )),
    );
  }
}
