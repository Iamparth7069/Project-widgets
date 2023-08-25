// import 'package:flutter/material.dart';
//
// import '../../Navigation_in_flutters/model/user.dart';
// import 'Model/user.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: testing(),
//     );
//   }
// }
// class testing extends StatefulWidget {
//   const testing({Key? key}) : super(key: key);
//
//   @override
//   State<testing> createState() => _testingState();
// }
//
// class _testingState extends State<testing> {
//   List<User> userList = [];
//   List<User> checkbox = [];
//   @override
//   void initState() {
//     super.initState();
//     userList.add(User(id: 1, name: 'Denish', email: 'denish@gmail.com'));
//     userList.add(User(id: 2, name: 'Alay', email: 'alay@gmail.com'));
//     userList.add(User(id: 3, name: 'Parth', email: 'parth@gmail.com'));
//     userList.add(User(
//         id: 4, name: 'Shaily', email: 'shaily@gmail.com', isChecked: true));
//     userList.add(User(id: 5, name: 'Meet', email: 'meet@gmail.com'));
//     userList.add(User(id: 6, name: 'Parthiv', email: 'parthiv@gmail.com'));
//     userList.add(
//         User(id: 7, name: 'Kevin', email: 'kevin@gmail.com', isChecked: true));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Material App Bar'),
//         ),
//         body: ListView.builder(
//           itemBuilder: (context, index) {
//             return ListTile(
//               style: ListTileStyle.list,
//               title: Text(),
//             );
//           },
//         ),
//     );
//   }
// }
//
