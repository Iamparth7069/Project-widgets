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
              Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: <Widget>[
                  Chip(
                    avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
                    label: const Text('Hamilton'),
                  ),
                  Chip(
                    avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
                    label: const Text('Lafayette'),
                  ),
                  Chip(
                    avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('HM')),
                    label: const Text('Mulligan'),
                  ),
                  Chip(
                    avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('JL')),
                    label: const Text('Laurens'),
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}
