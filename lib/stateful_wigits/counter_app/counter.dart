import 'package:flutter/material.dart';

void main() => runApp(conter1());

class conter1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Conter App",
      home: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  State<Counter> createState() => _counterpagestate();
}

class _counterpagestate extends State<Counter> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Counter App"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  print(count);
                  count++;
                });
              },
              child: Text("+"),
            ),
            SizedBox(
              width: 20,
            ),
            Text("$count"),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    print(count);
                    count--;
                  });
                },
                child: Text("-")),
          ],
        ),
      ),
    );
  }

  void plush() {
    count++;
    print(count);
  }

  void minus() {
    print(count);
    count--;
  }
}
