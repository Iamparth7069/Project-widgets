import 'package:flutter/material.dart';
import 'package:project/sqlite/database/Dbhelper.dart';
import 'package:project/sqlite/user.dart';

class categoryAdd extends StatefulWidget {
  User? user;
  categoryAdd({this.user});

  @override
  State<categoryAdd> createState() => _categoryAddState(user);
}
class _categoryAddState extends State<categoryAdd> {
  User? user;

  _categoryAddState(this.user);

  DbHelper dBhelaper = DbHelper();
  final _namecategory = TextEditingController();
  final _age = TextEditingController();
  final _email = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(user != null){
      _namecategory.text = user!.name ?? '';
      _age.text = user!.age.toString();
      _email.text = user!.email!;
    }

  }
  @override
  Widget build(BuildContext context)   {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Center(child: Text(user == null ? 'Add Category ' : 'Update Category')),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _namecategory,
                decoration: InputDecoration(
                  hintText: "Enter the Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _age,
                decoration: InputDecoration(
                    hintText: "Enter the des",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _email,
                decoration: InputDecoration(
                    hintText: "Enter the des",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildMatirialsubmitbutton(),
            ],
          ),
        ),
      ),
    );
  }

  buildMatirialsubmitbutton() {
    return MaterialButton(onPressed: () {
      var name = _namecategory.text.toString().trim();
      var agea = int.parse(_age.text.toString().trim());
      var email = _email.text.toString().trim();
     if(user != null){
       // update
       User Muser = User.withId(name: name,email: email,age: agea,date: user!.date,id: user!.id!);
       update(Muser,context);
     }else{
       // add
       User user = User(name: name,age: agea,email: email);
       addUser(user, context);
     }
      // print("Name is ${user.name} Id is ${user.id} des ${user.des} date is ${user.date}");
    },
    minWidth: double.infinity,
      color: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(user == null ? 'Add List' : 'Update List'),
    );
  }
  Future<void> addUser(User user, BuildContext context) async {
    try {
      var id = await dBhelaper.insert(user);
      if (id != -1) {
        // success
        user.id = id;
        print('user added successfully');
        Navigator.pop(context, user);
      }
    } catch (e) {
      print(e.toString());
    }
  }
  Future<void> update(User userupdate,BuildContext context) async {
    try{
      var id = await dBhelaper.update(userupdate);
      if(id != -1) {
        print('user updated successfully');
        Navigator.pop(context, userupdate);
      }
    }catch(e){
      print("error is ${e.toString()}");
    }
  }
}
