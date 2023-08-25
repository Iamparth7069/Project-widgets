import 'package:flutter/material.dart';
import 'package:project/Navigation_in_flutters/navigation_routes_name/pages/first_pages.dart';
import 'package:project/Navigation_in_flutters/navigation_routes_name/pages/second_page.dart';

import '../Navigation_in_flutters/model/user.dart';
import '../Navigation_in_flutters/navigation_routes_name/pages/error_page.dart';
import '../model/user.dart';
import '../navigation_routes_name/pages/error_page.dart';

class AppRoute {
    static Route<dynamic>? generateRoute(RouteSettings settings) {
    if (settings.name != null) {
      switch (settings.name) {
        case '/first_page':
          return MaterialPageRoute(
            builder: (context) => first_page(),
          );
        case '/second':
           var user = settings.arguments as User;
          return MaterialPageRoute(
            builder: (context) => second(user),
          );
        default:
          return MaterialPageRoute(
            builder: (context) => eroor_page(),
          );
          print("hello ");
      }
    }
  }
}
