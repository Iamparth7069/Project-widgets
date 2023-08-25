import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: timepickers()
    );
  }
}

class timepickers extends StatefulWidget {
  const timepickers({super.key});

  @override
  State<timepickers> createState() => _timepickersState();
}

class _timepickersState extends State<timepickers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Pick Time"),
          onPressed: () {
            _showTimepickers(context);
          },
        ),
      ),
    );
  }

   void _showTimepickers(BuildContext context) {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }
}
