import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:project/network2/detailsScreens.dart';
import 'package:project/network2/model/albums.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:home(),
    );
  }
}


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Future<List<Album>> fetchObjects() async {
    final response = await get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if (response.statusCode == 203) {


      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Album.fromMap(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    // futureAlbum = fetchAlbum();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: FutureBuilder<List<Album>>(
        future: fetchObjects(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final objects = snapshot.data!;

            return ListView.builder(
              itemCount: objects.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {

                    String url = 'https://jsonplaceholder.typicode.com/albums/${objects[index].id}';
                    Navigator.push(context, MaterialPageRoute(builder: (context) => details(url),));
                  },
                  title: Text('${objects[index].title}'),
                  subtitle: Text('${objects[index].id}'),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      )
    );
  }


}


