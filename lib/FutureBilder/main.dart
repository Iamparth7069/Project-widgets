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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBilder'),
      ),
      body: FutureBuilder(
        future: fatchData(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else if(snapshot.hasError){
            return Center(
              child: Text("The Data Error"),
            );
          }else if(snapshot.data == null){
            return Center(
              child: Text("Data IS Nothing"),
            );
          }else{
            return Center(child: Text("${snapshot.data.toString()}"));
          }
           
        },
      )
    );
  }

  Future<String> fatchData() {
    return Future.delayed(Duration(seconds: 7), () => "This is Future Values",);
  }
}

