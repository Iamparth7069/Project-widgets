import 'package:flutter/material.dart';

import 'package:project/sqlite/category_List.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: UserListScreen()
    );
  }
}
