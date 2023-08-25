import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body:homepage(),
      ),

    );
  }
}
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _Name = TextEditingController();
  final _enail = TextEditingController();
  final _password = TextEditingController();
  String? name;
  String? email;
  String? password;

  void _saveTheData(String name,String email,String password)async {

    try{
      var prefs = await SharedPreferences.getInstance();
      await prefs.setString("NAME", name);
      await prefs.setString("EMAIL", email);
      await prefs.setString("PASSWORD",password);
      print('data saved successfully...');

    }catch(e){
      print(e.toString());
    }
  }
  Future<void> _readdata() async{
    try{
      var prefs = await SharedPreferences.getInstance();
      name = prefs.getString("NAME") ?? "";
      email = prefs.getString("EMAIL") ?? "";
      password = prefs.getString("PASSWORD") ?? "";
      setState(() {
        print('''
        name : ${name}
        Email : ${email}
        password ${password}
       ''');
      });
    }catch(e){
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _Name,
              decoration: InputDecoration(
                  labelText: "Enter Name",
                  hintText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _enail,
              decoration: InputDecoration(
                  labelText: "Enter Email",
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _password,
              decoration: InputDecoration(
                  labelText: "Enter Password",
                  hintText: "Passwword",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: () {
                        _readdata();
                  }, child: Text("Read Data")),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(onPressed: () {
                    String name = _Name.text.toString().trim();
                    String email1 = _enail.text.toString().trim();
                    String salary = _password.text.toString().trim();
                    _saveTheData(name,email1,salary);
                  }, child: Text("Save  Data")),
                ),
              ],
            ),
            SizedBox(height: 24,),
            Text(name == null ? '' : '''
            name : $name  
            Email : $email
            Password : $password
            '''),
          ],
        ),
      ),
    );
  }
}
