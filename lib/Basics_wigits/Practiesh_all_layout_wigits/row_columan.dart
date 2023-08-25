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
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.lightGreenAccent,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.purple,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.yellow,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      color: Colors.blueGrey,
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      color: Colors.deepOrange,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 30,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 31,
                      color: Colors.teal,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.lightBlue.shade900),
              child: Center(
                child: Text("Hello Welcome to Flutter",
                    style: TextStyle(color: Colors.white60)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      color: Colors.yellow,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 50,
                          color: Colors.pinkAccent,
                        ),
                        Container(
                          height: 40,
                          width: 50,
                          color: Colors.deepOrange,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 35,
                          width: 310,
                          color: Colors.purpleAccent,
                          child: Center(
                            child: Text("This is Row In wrep to Columan"),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 310,
                          color: Colors.black54,
                          child: Center(
                              child:
                                  Text("This is Columan in wrep to Columan 2")),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: 260,
                      color: Colors.lightGreenAccent,
                    ),
                    Container(
                      height: 35,
                      width: 260,
                      color: Colors.black,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: 150,
                      color: Colors.brown,
                    ),
                    Container(
                      height: 35,
                      width: 150,
                      color: Colors.cyanAccent,
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.deepPurpleAccent),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightGreenAccent),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.purpleAccent),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10)),
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10)),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10)),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10)),
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10)),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.lime,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10)),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  width: 11.1,
                  color: Colors.lime.shade900,
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 340,
                  width: 350,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.cyan,
                  ),
                ),
                Container(
                  height: 330,
                  width: 340,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('images/tiger.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 10,
                    child: Text("Tiger",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 25,color: Colors.white),))
              ],
            )
          ],
        )),
      ),
    );
  }
}
