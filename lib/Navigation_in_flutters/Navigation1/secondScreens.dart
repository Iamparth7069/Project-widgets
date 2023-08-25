import 'package:flutter/material.dart';

import '../model/user.dart';
class Second_screens extends StatelessWidget {
  // String name1;
  // String Email1;
  // String number1;
  User user;
  Second_screens(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screens"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('''
             The Name ${user.name},
             The Email ${user.email},
             The Number ${user.phoone}
            ''')
          ],
        ),
      ),
    );
  }
}
