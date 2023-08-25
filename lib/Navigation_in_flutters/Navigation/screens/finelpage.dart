import 'package:flutter/material.dart';
class finelpage extends StatelessWidget {
  String name;
  String number;
  String otp;
  String email;
  String pass;
  String epass;


  finelpage(
      this.name, this.number, this.otp, this.email, this.pass, this.epass);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FinelScreens"),
      ),
      body: Center(
        child: Text(
          '''
          The Name is ${name}
          The Otp is ${otp}
          The Address is ${number}
          The Email is ${email}
          The pass is ${pass}
          The Cpass is ${epass}'''
        ),
      ),
    );
  }
}
