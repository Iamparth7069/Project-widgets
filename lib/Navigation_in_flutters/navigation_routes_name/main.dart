import 'package:flutter/material.dart';
import 'package:project/Navigation_in_flutters/model/user.dart';
import 'package:project/Navigation_in_flutters/navigation_routes_name/pages/first_pages.dart';
import 'package:project/Navigation_in_flutters/navigation_routes_name/pages/second_page.dart';
import 'package:project/routes/approutes.dart';

import '../routes/approutes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
     initialRoute: '/first_page',
      // routes: {
      //   '/first_page' : (context) => first_page(),
      //   '/second_page' : (context) => second(),
      // },
      onGenerateRoute: AppRoute.generateRoute,
    );
  }
}
