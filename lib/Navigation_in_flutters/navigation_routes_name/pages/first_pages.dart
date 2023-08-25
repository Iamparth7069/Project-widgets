import 'package:flutter/material.dart';
import 'package:project/Navigation_in_flutters/model/user.dart';

class first_page extends StatelessWidget {
  first_page({Key? key}) : super(key: key);
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phoneNo = TextEditingController();
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
            TextField(
              controller: _name,
              decoration: InputDecoration(
                hintText: "Name",
                label: Text("Enter Name"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _email,
              decoration: InputDecoration(
                hintText: "Email",
                label: Text("Enter Email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _phoneNo,
              decoration: InputDecoration(
                hintText: "Email",
                label: Text("Enter Email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                String name= _name.text.trim();
                String email = _email.text.trim();
                String phone = _phoneNo.text.trim();
                User user= User(name,email,phone);
                Navigator.pushNamed(context, '/second' ,arguments: user);
              },
              child: Text("Enter the Second Screens"),
            ),
          ],
        ));
  }
}
