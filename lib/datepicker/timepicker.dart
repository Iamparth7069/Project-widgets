import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: timetest(),
    );
  }
}

class timetest extends StatefulWidget {
  const timetest({Key? key}) : super(key: key);

  @override
  State<timetest> createState() => _timetestState();
}

class _timetestState extends State<timetest> {

  late TimeOfDay time1;
  late TimeOfDay set;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // time = TimeOfDay.now();
    time1 = TimeOfDay.now();
  }
  Future<Null> selecttime(BuildContext context) async {
    // time1 = await showTimePicker(context: context, initialTime: time1);
    if(set != null){
      setState(() {
        set = time1;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  selecttime(context);
                });
                print(set);
              },
              icon: Icon(Icons.alarm),
              iconSize: 40,
            ),
            Text("current time is $time1")
            // Text("The Time is ${}")
          ],
        ),
      ),
    );
  }


}
