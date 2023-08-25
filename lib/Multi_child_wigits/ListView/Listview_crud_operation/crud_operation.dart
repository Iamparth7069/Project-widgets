import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project/Multi_child_wigits/ListView/Listview_crud_operation/Model1/User1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: crudepage(),
    );
  }
}

class crudepage extends StatefulWidget {
  const crudepage({Key? key}) : super(key: key);

  @override
  State<crudepage> createState() => _crudepageState();
}

class _crudepageState extends State<crudepage> {

  List<User> adduser = [];
  void insert(BuildContext context,User user) {
    setState(() {
      adduser.add(user);
      Navigator.pop(context);
    });

  }
  void updateUser(User user, BuildContext context) {
    var index = adduser.indexWhere((element) => element.id == user.id);

    setState(() {
      adduser[index] = user;
      Navigator.pop(context);
    });
  }
  // void update(BuildContext context, User user) {
  //   var index=adduser.indexWhere((element) => element.id == user.id);
  //   setState(() {
  //     adduser[index] = user;
  //     Navigator.pop(context);
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.builder(
        itemCount: adduser.length,
        itemBuilder: (context, index) {
          User user=adduser[index];
         return ListTile(
           onTap: () {
             showBottomSheetDialog(context,user);
           },
           title: Text(user.name),
           subtitle: Text(user.email),
           leading: Icon(Icons.account_circle),
           trailing: IconButton(onPressed: () {
             delete(user);
           }, icon:Icon(Icons.delete),
           ),
         );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheetDialog(context,null);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void showBottomSheetDialog(BuildContext context,User? muser) {
    final _name = TextEditingController();
    final _email = TextEditingController();
    if(muser != null){
      _name.text = muser.name;
      _email.text = muser.email;
    }

    showModalBottomSheet(context: context, builder: (context) {
      return Padding(padding: EdgeInsets.fromLTRB(16, 16, 16,MediaQuery.of(context).viewInsets.bottom)
      ,child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _name,
            decoration: InputDecoration(
              label: Text("Name"),
              hintText: "Enter The Name"
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _email,
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: "Enter The Email"
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: () {
            String name = _name.text.toString().trim();
            String email = _email.text.toString().trim();
            int id = muser != null ? muser.id : Random().nextInt(9999);
            User user=User(id, name, email);
            if(muser == null){
              insert(context,user);
              print("papu");
            }
            else{
              updateUser(user,context);
              print("parth");
            }
          }, child: Text(muser == null ? "Insert" : "update"))
        ],
      ),);
    },
    isScrollControlled:true );
  }

  void delete(User user) {
    setState(() {
      adduser.removeWhere((element) => element.id == user.id);
    });
  }



}




