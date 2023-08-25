import 'package:flutter/material.dart';
import 'package:project/Matirial_component/navigator_header_drawable/screenss/settingpage.dart';

import 'navigator_header_drawable/screenss/home1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: newtesting());
  }
}

class newtesting extends StatefulWidget {
  const newtesting({Key? key}) : super(key: key);

  @override
  State<newtesting> createState() => _newtestingState();
}

class _newtestingState extends State<newtesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(child: Column(
          children: [
            Headerfordrawer(context),
            ListofItems(context),
          ],
        )),
      ),
    );
  }

  Headerfordrawer(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top+30,bottom: 40),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/tiger.jpg'),
          ),
          Column(
            children: [
              Text("Parth Vyas",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 20,
              ),
              Text("vyasparth451@gmail.com",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
            ],
          )
        ],
      ),
    );
  }

  ListofItems(BuildContext context){
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => homepage(),));
          },
          leading: Icon(Icons.home),
          title: Text("Home",style: TextStyle(color: Colors.black)),
        ),
        ListTile(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => setting(),));
          },
          leading: Icon(Icons.settings),
          title: Text("Setting",style: TextStyle(color: Colors.black)),
        ),
        ExpansionTile(title: Text("accessibility"),leading: Icon(Icons.accessibility_outlined),children: [
          ListTile(
            onTap: () {
              
            },
            leading: Icon(Icons.gesture),
            title: Text("Gesture"),
          )
        ],),
        Divider(
          height: 10,
          thickness: 10,
        ),
        ListTile(
            onTap: () {
              Alertdailogsforlogout(context);
            },
          leading: Icon(Icons.logout),
          title: Text("Logout",style: TextStyle(color: Colors.black)),
        ),
        ListTile(
          onTap: () {
            Navigator.pop(context);
          },
          leading: Icon(Icons.close),
          title: Text("Close Drawer",style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }

  Future<dynamic> Alertdailogsforlogout(BuildContext context) {
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("Exit To This App"),
        icon: Icon(Icons.exit_to_app),
        content: Text("Logout To This Users"),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context,"Logout");
          }, child:Text("LogOut")),
          TextButton(onPressed: () {
            Navigator.pop(context,"Null");
          }, child: Text("Cancels"))
        ],
      );
    },);
  }
}
