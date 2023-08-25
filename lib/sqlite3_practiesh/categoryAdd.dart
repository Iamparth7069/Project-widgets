import 'package:flutter/material.dart';
import 'package:project/sqlite3_practiesh/databases/database.dart';
import 'package:project/sqlite3_practiesh/model/models.dart';

class categoryAdd extends StatefulWidget {
  const categoryAdd({super.key});

  @override
  State<categoryAdd> createState() => _categoryAddState();
}

class _categoryAddState extends State<categoryAdd> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _age = TextEditingController();
  Dbhelper _dbhelper = Dbhelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "Enter the Name";
                  }
                  else{
                    return null;
                  }
                },
                controller: _name,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "Enter the Name";
                  }
                  else{
                    return null;
                  }
                },
                controller: _email,
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "Enter the Password";
                  }
                  else{
                    return null;
                  }
                },
                controller: _age,
                decoration: InputDecoration(
                    hintText: "age",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildmatirialButton(),
            ],
          ),
        ),
      ),
    );
  }

  buildmatirialButton() {
    return MaterialButton(onPressed: () {
      String name = _name.text.toString().trim();
      String email = _email.text.toString().trim();
      int age = int.parse( _age.text.toString().trim());
      Models models = Models(name: name, age: age, email: email);
      addTheData(models);
    },
    minWidth: double.infinity,
      padding: EdgeInsets.all(20),
      child: Text("Add Category"),
      color: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }

  Future<void> addTheData(Models models) async {
   try{
     var id = await _dbhelper.insert(models);
     if(id != -1){
       print("Add The Data");
     }else{
       print("Its Error");
     }
   }catch(e){
     print(e.toString());
   }
  }
}
