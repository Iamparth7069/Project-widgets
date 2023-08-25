import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: tabbarcontroller()
    );
  }
}

class tabbarcontroller extends StatefulWidget {
  const tabbarcontroller({Key? key}) : super(key: key);

  @override
  State<tabbarcontroller> createState() => _tabbarcontrollerState();
}

class _tabbarcontrollerState extends State<tabbarcontroller> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, initialIndex:0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
         bottom: TabBar(tabs: [
           Tab(
             icon: Icon(Icons.add),
             text: "Add",
           ),
           Tab(
             icon: Icon(Icons.train),
             text: "Train",
           ),
           Tab(
             icon: Icon(Icons.bus_alert),
             text: "Train",
           ),
         ],),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

