import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:project/network2/model/albums.dart';

class details extends StatefulWidget {
String url;


details(this.url);

  @override
  State<details> createState() => _detailsState(url);
}

class _detailsState extends State<details> {
  String url;
  _detailsState(this.url);
  final _id = TextEditingController();
  final _title = TextEditingController();
  final _userId = TextEditingController();
   Future<Album>? futureAlbum;

  @override
  void initState() {
    // TODO: implement initState
    futureAlbum = fetchObject();

    super.initState();
  }


  Future<Album> fetchObject() async {
    final response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      print(response.body);
      return Album.fromMap(jsonDecode(response.body));
    }else {
      throw Exception('Failed to load data');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details For User"),
      ),
      body:Center(
        child:  Padding(
          padding: const EdgeInsets.all(20),
          child: FutureBuilder(
            future: futureAlbum,
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Container(
                    child: CircularProgressIndicator(),
                  );
                }else if(snapshot.hasData){
                  var id = snapshot.data?.id;
                  var name = snapshot.data!.title;
                  var userId = snapshot.data!.userId;
                   _title.text = name;
                   _id.text = id.toString();
                  _userId.text = id.toString();
                  print(id);
                  print(name);
                  return Column(
                    children: [
                      TextFormField(
                        controller: _title,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            )
                        ),
                      ),
                      TextFormField(
                        controller: _userId,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            )
                        ),
                      ),
                      TextFormField(
                        controller: _id,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            )
                        ),
                      )
                    ],
                  );
                }else{
                  return Container();
                }
              },
          )
        ),
      ),
    );
  }


}
