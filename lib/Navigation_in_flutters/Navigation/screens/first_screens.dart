import 'package:flutter/material.dart';
import 'package:project/Navigation_in_flutters/Navigation/screens/second.dart';
class firstapp extends StatelessWidget {
   firstapp({Key? key}) : super(key: key);

  final _name=TextEditingController();
  final _number=TextEditingController();
  final _otp=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is First Screens"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Enter the Name",
                label: Text("Name"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _number,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Enter the Number",
                label: Text("Number"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _otp,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Enter the Otp",
                label: Text("OTP"),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),
          child: ElevatedButton(onPressed: () {
            String name=_name.text.trim();
            String email=_number.text.trim();
            String otp=_otp.text.trim();
            Navigator.push(context, MaterialPageRoute(builder: (context) => second_screens(name,email,otp),));
          },
            child: Text("Enter The Second Screens"),
          ),)
        ],
      ),
    );
  }
}
