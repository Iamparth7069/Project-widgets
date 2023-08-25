import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:project/Network/model/UserResponce.dart';
import 'package:project/network2/detailsScreens.dart';

import 'model/Data.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UserList',
      home: Hometest(),
    );
  }
}

class Hometest extends StatefulWidget {
  const Hometest({super.key});


  @override
  State<Hometest> createState() => _HometestState();
}

class _HometestState extends State<Hometest> {
  @override
  void initState() {
    super.initState();
    fetchUserList();
  }

  List<User1> userList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
        return ListTile(
          onTap: () {

          },
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            foregroundImage: NetworkImage('${userList[index].avatar}'),
            radius: 30,
          ),
          title: Text('${userList[index].firstName} ${userList[index].lastName}'),
          subtitle: Text("${userList[index].email}"),
        );
      },),
    );
  }

  fetchUserList() async {
   Response res = await get(Uri.parse('https://reqres.in/api/users?page=2'));
   if(res.statusCode == 200){
     UserResponce user = UserResponce.fromJson(jsonDecode(res.body));
     setState(() {
       userList = user.userList!;
     });
   }else{
     print("Error");
   }
  }
}
