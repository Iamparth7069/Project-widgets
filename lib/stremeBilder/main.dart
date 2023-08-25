import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Stream<String> fatchCurrent(){
    return Stream.periodic(Duration(),(computationCount) {
      DateTime Now = DateTime.now();
      return "${Now.hour} : ${Now.minute} : ${Now.second}";
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Streme Bilder'),
      ),
      body: StreamBuilder(
        stream: fatchCurrent(),
        builder: (context, snapshot) {
          if(snapshot.hasError){
            return Center(
              child: Text("The Data Error"),
            );
          }
          else{
            return Center(child: Text("${snapshot.data}"));
          }
        },
      )
    );
  }
}

