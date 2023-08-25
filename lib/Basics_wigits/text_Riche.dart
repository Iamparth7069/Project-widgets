import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is Test For App",
      home: Scaffold(
        body: Center(
          child: Text.rich(
            TextSpan(
                style: TextStyle(fontStyle: FontStyle.italic),
                text: 'Welcome To ',
                children: [
                  TextSpan(
                   style: TextStyle(
                     fontStyle: FontStyle.normal,
                     fontSize: 20,
                     fontWeight: FontWeight.w600,
                     color: Colors.purple
                   ),
                   text: "Tops Technology\n"
                  ),
                  TextSpan(
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan
                      ),
                      text: "     Name is Parth Vyas\n"
                  ),
                  TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.amberAccent.shade700,
                      decoration: TextDecoration.combine([
                        TextDecoration.underline,
                        TextDecoration.overline
                      ]),
                    ),
                    text: "The ID id 2021042397"
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
