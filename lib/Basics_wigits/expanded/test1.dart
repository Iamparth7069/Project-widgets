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
        body: Center(
          child: Container(
            child: Row(
              children: [
                // Icon(Icons.menu,color: Colors.red,size: 45,),
                // Expanded(child: Container(
                //   child: Center(child: Text("This is The Columan")),
                // )),
                // Icon(Icons.add,color: Colors.green,size: 45,)
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text("Button 1"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text("Button 2"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
