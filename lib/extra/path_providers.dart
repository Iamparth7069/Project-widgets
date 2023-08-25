import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<void> checkPath() async{
    Directory temoDir =await getTemporaryDirectory();
    Directory documentDir = await getApplicationDocumentsDirectory();
    Directory supportDir = await getApplicationSupportDirectory();
    // var downloadDir = await getDownloadsDirectory();
    print('temp directory : ${temoDir.path}');
    print('document directory : ${documentDir.path}');
    print('support directory : ${supportDir.path}');
    String fileName = '${DateTime.now().millisecondsSinceEpoch}.jpg';
    File file = File('${supportDir.path}/$fileName');
    if(!await file.exists()){
      file.create();
      print("file create");
      print("File Name ${file.path}");
    }else{
      print(false);
    }
     print("downloadDir : ${supportDir?.path}");
    print(file.path);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: ElevatedButton(
              onPressed:() {
                checkPath();
              },
              child: Text("Click To Show Path"),
            ),
          ),
        ),
      ),
    );
  }


}
