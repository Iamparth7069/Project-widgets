import 'package:flutter/material.dart';
import 'package:project/bottomNavigation/screens/Homescreens.dart';
import 'package:project/bottomNavigation/screens/notificationscreens.dart';
import 'package:project/bottomNavigation/screens/profilescreens.dart';
import 'package:project/bottomNavigation/screens/searchScreeens.dart';
import 'package:project/bottomNavigation/screens/settingscreens.dart';

import 'model/manu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: bottom()
    );
  }
}
class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  var selectedIndex = 0;
  var Itemlist = <manuitems>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Itemlist.add(manuitems(Colors.limeAccent, "Home", Homescreens()));
    Itemlist.add(manuitems(Colors.red, "Search", SearchScreens()));
    Itemlist.add(manuitems(Colors.deepPurpleAccent, "Setting", settingScreens()));
    Itemlist.add(manuitems(Colors.amber, "Notification", Notification1()));
    Itemlist.add(manuitems(Colors.brown, "Profile", profileScreens()));
  }
  @override
  Widget build(BuildContext context) {
    print(Itemlist);
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(Itemlist[selectedIndex].tital)
      ),
      body: Itemlist[selectedIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        /*showSelectedLabels: false,*/
        /*fixedColor: Colors.green,*/
        showUnselectedLabels: false,
        showSelectedLabels: true,
        onTap: (value) {
        setState(() {
          selectedIndex = value;
          print(selectedIndex);
        });
        }, items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Itemlist[selectedIndex].color),
        BottomNavigationBarItem(icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Itemlist[selectedIndex].color),
        BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: "Setting",
            backgroundColor: Itemlist[selectedIndex].color),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),
            label: "Notification",
            backgroundColor: Itemlist[selectedIndex].color),
        BottomNavigationBarItem(icon: Icon(Icons.person),
            label: "profile",
            backgroundColor: Itemlist[selectedIndex].color),
      ],
      ),
    );
  }
}

