import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:ThemeData(
         // primaryColor: Colors.yellow,
          primarySwatch: Colors.amber,
          // brightness: Brightness.dark,
          appBarTheme: AppBarTheme(color: Colors.amber),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            splashColor: Colors.white,
            backgroundColor: Colors.green,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(70)
            )
          ),
          // textTheme: TextTheme(
          //
          // )
          scaffoldBackgroundColor: Colors.red.shade100,
          colorScheme: ColorScheme.fromSwatch(
            brightness: Brightness.light,
            primarySwatch: Colors.green
        ).copyWith(
            secondary: Colors.green,
            onSecondary: Colors.black,
          ).copyWith(
            // brightness: Brightness.dark
          ),
          textTheme: TextTheme(
            displaySmall: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)
          )
        ),
        title: 'Material App', home: Matirialcheck());
  }
}

class Matirialcheck extends StatefulWidget {
  const Matirialcheck({Key? key}) : super(key: key);

  @override
  State<Matirialcheck> createState() => _MatirialcheckState();
}

class _MatirialcheckState extends State<Matirialcheck> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => matirialtested()));
          },
          child: Icon(Icons.navigate_next),
        ),
        appBar: AppBar(
          title: Text('Material App Bar',style: Theme.of(context).textTheme.displaySmall,),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Flutter Theme"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Theme widgets that define the colors and font styles for a particular part of the application.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: ischecked,
                      onChanged: (value) {
                        setState(() {
                          ischecked = value!;
                        });
                      },
                    ),
                    Text(
                      'Terms and Conditions',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Title',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Message',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Button1'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Button2'),
                ),
              ],
            ),
          ),
        ));
  }
}
class matirialtested extends StatelessWidget {
  const matirialtested({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Another Screen',
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
