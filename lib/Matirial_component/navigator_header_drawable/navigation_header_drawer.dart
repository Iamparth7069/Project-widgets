import 'package:flutter/material.dart';
import 'package:project/Matirial_component/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: header_navigation(),
    );
  }
}
class header_navigation extends StatefulWidget {
  const header_navigation({Key? key}) : super(key: key);

  @override
  State<header_navigation> createState() => _header_navigationState();
}

class _header_navigationState extends State<header_navigation> {
  final _menuItemTextStyle = TextStyle(fontSize: 18);
  var _wigitsoption = <Widget>[
    Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Center(
      child: Text(
        "My Cart",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Center(
      child: Text(
        "Order",
        style: TextStyle(fontSize: 24),
      ),
    ),
  ];
  int selectedIndex = 0;
  String titleText = "Home";
  void onMenuItemSelected(tital t1) {
    setState(() {
      selectedIndex = t1.index;
      titleText = t1.tital1;

    });
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleText),
        backgroundColor: Colors.green,
      ),
      body: _wigitsoption[selectedIndex],
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              drawerheader(context),
              lisofitems(context),
            ],
          ),
        )
      ),
    );
  }

  drawerheader(BuildContext context) {
    return Container(
      color: Colors.green,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
                backgroundColor:Colors.grey,
              backgroundImage: AssetImage('assets/images/tiger.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Tops Technologies',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              'topstech@gmail.com',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  lisofitems(BuildContext context) {
    tital t1;
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          onTap:(){
            t1 = tital(0, "Home");
            onMenuItemSelected(t1);
          },
          leading: Icon(Icons.home),
          title: Text("Home",style: _menuItemTextStyle,),
        ),
        ListTile(
          onTap: () {
            t1 = tital(1, "Profile");
            onMenuItemSelected(t1);
          },
          leading: Icon(Icons.person),
          title: Text(
            'Profile',
            style: _menuItemTextStyle,
          ),
        ),
        ListTile(
          onTap: () {
            t1 = tital(2, "My Cart");
            onMenuItemSelected(t1);
          },
          leading: Icon(Icons.shopping_cart),
          title: Text(
            'My Cart',
            style: _menuItemTextStyle,
          ),
        ),
        ListTile(
          onTap: () {
            t1 = tital(3, "My Cart");
            onMenuItemSelected(t1);
          },
          leading: Icon(Icons.bookmark),
          title: Text(
            'Order',
            style: _menuItemTextStyle,
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'Settings',
            style: _menuItemTextStyle,
          ),
        ),
        ListTile(
          title: Text(
            'Logout',
            style: _menuItemTextStyle,
          ),
        ),
      ],
    );
  }
}
