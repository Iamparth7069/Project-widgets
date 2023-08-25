import 'package:flutter/material.dart';
import 'package:project/sqlite/category_Add.dart';
import 'package:project/sqlite/database/Dbhelper.dart';
import 'package:project/sqlite/user.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<User> userList = [];
  DbHelper _dbHelper = DbHelper();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () async {
             User update = await  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => categoryAdd(user: userList[index]),
                  ));
             if(update is User){
               var index = userList.indexWhere((element) => element.id == update?.id);
               setState(() {
                 userList[index] = update;
               });
             }
            },
            leading: CircleAvatar(
              backgroundColor: Colors.amber.shade200,
              child: Icon(
                Icons.menu,
                color: Colors.amber,
              ),
            ),
            title: Text(userList[index].name!),
            subtitle: Text(userList[index].email!),
            trailing: IconButton(
              onPressed: () async {
                int? id = userList[index].id;
                deleterid(id,context);
                 setState(() {
                     userList.removeWhere((element) => element.id == userList[index].id);
                 });

              },
              icon: Icon(Icons.delete),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var user = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => categoryAdd(),
            ),
          );
          if (user is User) {
            setState(() {
              userList.add(user);
            });
          }
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Future<void> loadUserList() async {
    var tempList = await _dbHelper.getUserList();
    setState(() {
      userList = tempList;
    });
  }

  Future<void> deleterid(int? id, BuildContext context) async {
    try{
      var ids = await _dbHelper.delete(id!);
      if(ids != -1){
        print("deleted Succsess Fully");
      }
    }catch(e){
      print("Deleter Error is $e");
    }
  }


}
