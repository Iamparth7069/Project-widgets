import 'package:flutter/material.dart';
import 'package:project/Navigation1/secondScreens.dart';
import 'package:project/Navigation_in_flutters/Navigation1/secondScreens.dart';

import '../model/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: firstpage(),
    );
  }
}
class firstpage extends StatelessWidget {
 var _name = TextEditingController();
 var _Email = TextEditingController();
 var _phone  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Text("Login Page",style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.indigo,
            fontStyle: FontStyle.italic,
            fontSize: 20
          ),),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _name,
              decoration: InputDecoration(
                label: Text("Enter the Name"),
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _Email,
              decoration: InputDecoration(
                  label: Text("Enter the Email"),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _phone,
              decoration: InputDecoration(
                  label: Text("Enter the Phone No"),
                  hintText: "Phone",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
            ),
          ),
          ElevatedButton(
            child: Text("Send The Data"),
            onPressed: () {
              String name = _name.text.trim();
              String email = _Email.text.trim();
              String phone = _phone.text.trim();
              User user = User(name, email, phone);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Second_screens(user)));
            },
          ),
        ],
      )
    );
  }
}
