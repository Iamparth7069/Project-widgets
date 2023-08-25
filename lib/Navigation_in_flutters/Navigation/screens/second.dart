import 'package:flutter/material.dart';


import 'finelpage.dart';

class second_screens extends StatelessWidget {
  String name1;
  String otp1;
  String number1;


  second_screens(this.name1, this.otp1, this.number1);
  var email = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Second Screens"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: email,
            decoration: InputDecoration(
                label: Text("Enter the Email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Email"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: pass,
            decoration: InputDecoration(
                label: Text("Enter the Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Email"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: cpass,
            decoration: InputDecoration(
                label: Text("Enter the Second Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Conform password"),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: () {
            String pass1=pass.text.trim();
            String cpass1 = cpass.text.trim();
            String Email=email.text.trim();
            Navigator.push(context, MaterialPageRoute(builder: (context) => finelpage(name1,otp1,number1,pass1,cpass1,Email),));
          }, child: Text("Login")),
          SizedBox(
            height: 20,
          ),
          Text('''
          Name : ${name1},
          Otp : ${otp1},
          addresh :${number1},
          '''),
        ],
      ),
    );
  }
}
