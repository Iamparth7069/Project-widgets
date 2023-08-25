import 'package:flutter/material.dart';
import 'package:project/Navigation_in_flutters/model/user.dart';

import 'error_page.dart';
class second extends StatelessWidget {
   User user;
   second(this.user);
  @override
  Widget build(BuildContext context) {
    // var name = ModalRoute.of(context)?.settings.name as String;
    // var data = ModalRoute.of(context)?.settings.arguments as User;
    // print(name);
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Scaffold(
        appBar: AppBar(title: Text("The First Screens")),
        body: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("The Name is ${user.name}"),
                SizedBox(
                  height: 20,
                ),
                Text("The Email is ${user.email}"),
                SizedBox(
                  height: 20,
                ),
                Text("The Phone no is ${user.phoone}"),
                SizedBox(
                  height: 20,
                ),
                Text("The Back "),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                }, child:Text("Back ")),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => eroor_page(),));
                  },
                  child: Text(
                    "Error Page"
                  ),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
