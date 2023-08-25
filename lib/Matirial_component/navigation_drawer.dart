import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Navigationcheck(),
    );
  }
}

class Navigationcheck extends StatefulWidget {
  const Navigationcheck({Key? key}) : super(key: key);

  @override
  State<Navigationcheck> createState() => _NavigationcheckState();
}

class _NavigationcheckState extends State<Navigationcheck> {
  var _menuItemTextStyle = TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              children: [
                ExpansionTile(title: Text("Manage Product"),
                controlAffinity: ListTileControlAffinity.leading,
                childrenPadding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  ListTile(
                    onTap: () {
                    },
                    title: Text(
                      'Add Product',
                      style: _menuItemTextStyle,
                    ),
                  ),
                  ListTile(
                    onTap: () {

                    },
                    title: Text(
                      'Update Product',
                      style: _menuItemTextStyle,
                    ),
                  ),
                  ListTile(
                    onTap: () {

                    },
                    title: Text(
                      'Remove Product',
                      style: _menuItemTextStyle,
                    ),
                  ),
                ]),
                ListTile(
                  onTap: () {

                  },
                  leading: Icon(Icons.account_circle),
                  title: Text("Profile",style: _menuItemTextStyle,),
                ),
                ListTile(
                  onTap: () {

                  },
                  leading: Icon(Icons.settings),
                  title: Text("Setting",style: _menuItemTextStyle),
                ),
                ListTile(
                  onTap: () {

                  },
                  leading: Icon(Icons.person),
                  title: Text(
                    'Profile',
                    style: _menuItemTextStyle,
                  ),
                ),
                ListTile(
                  onTap: () {

                  },
                  leading: Icon(Icons.shopping_cart),
                  title: Text(
                    'My Cart',
                    style: _menuItemTextStyle,
                  ),
                ),
                ListTile(
                  onTap: () {

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
                  onTap: () {

                  },
                  title: Text(
                    'Settings',
                    style: _menuItemTextStyle,
                  ),
                ),
                ListTile(
                  onTap: () {

                  },
                  title: Text(
                    'Logout',
                    style: _menuItemTextStyle,
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
