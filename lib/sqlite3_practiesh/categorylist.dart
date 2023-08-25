import 'package:flutter/material.dart';
import 'package:project/sqlite3_practiesh/categoryAdd.dart';
import 'package:project/sqlite3_practiesh/databases/database.dart';
import 'package:project/sqlite3_practiesh/model/models.dart';
import 'package:sqflite/sqflite.dart';

class categoryList extends StatelessWidget {
  const categoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => categoryAdd(),));
        },
        child: Icon(Icons.add),

      ),
    );
  }
}

class body extends StatefulWidget {
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  Dbhelper _dbhelper = Dbhelper();
  List<Models> categryList = [];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: categryList.length,
      itemBuilder: (context, index) {
      return ListTile(
        onTap: () {

        },
        title: Text("${categryList[index].name}"),
        subtitle: Text("${categryList[index].email}"),

      );
    },);
  }

  Future<void> loadData() async {
    var tempList = await _dbhelper.readData();
    setState(() {
       categryList = tempList;
    });
  }
}

