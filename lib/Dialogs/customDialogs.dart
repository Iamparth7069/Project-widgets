import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: customdialogs(),
    );
  }
}

class customdialogs extends StatefulWidget {
  const customdialogs({Key? key}) : super(key: key);

  @override
  State<customdialogs> createState() => _customdialogsState();
}

class _customdialogsState extends State<customdialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // pop up manudrivan
      appBar: AppBar(
        actions: [
          PopupMenuButton(
        onSelected: (value) {
          print(value);
        },itemBuilder: (context) {
          return [
            PopupMenuItem(
              onTap: () {
                showcustomDialogs(context);
              }, value: 1,child: Text("Profile")),
            PopupMenuItem(
                onTap: () {

                }, value: 2,child: Text("settings")),
            PopupMenuItem(
                onTap: () {
                }, value: 3,child: Text("Logout")),
          ];
          },)
        ],
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              showcustomDialogs(context);
            },
            child: Text("Custom Dialogs"),
          ),
        ),
      ),
    );
  }

  void showcustomDialogs(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/tiger.jpg',
                  width: 80,
                  height: 80,
                ),
                Text(
                  'Rate us',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Rating Us",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 10,
                ),
                RatingBar.builder(
                  itemCount: 5,
                  direction: Axis.horizontal,
                allowHalfRating: true,
                initialRating: 1,

                itemBuilder: (context, index) {
                  return Icon(Icons.star,
                  color: Colors.amber,);
                }, onRatingUpdate: (value) {
                  print(value);
                },),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter message', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    OutlinedButton(onPressed: () {

                    }, child: Text("Cencel")),
                    SizedBox(
                      width: 05,
                    ),
                    OutlinedButton(onPressed: () {
                      alertDialogs(context);
                    }, child: Text("Logout")),

                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void alertDialogs(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Exit App'),
          content: Text('Exit to This App'),
          actions: <Widget>[
            TextButton(
              child: Text('Exit'),
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Dismiss alert dialog
              },
            ),
          ],
        );
      },
    );
  }
}
