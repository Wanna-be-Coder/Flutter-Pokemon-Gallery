//Import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:core';
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

//Create a class that will be a custom widget and must extend the stateless widget class
class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> imageList = [];

  void fetchImage() async {
    counter++;
    var imageData =
        await get(Uri.parse('https://pokeapi.glitch.me/v1/pokemon/$counter'));
    var imageModel = ImageModel.fromJson(json.decode(imageData.body));
    setState(() {
      imageList.add(imageModel);
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Documentation Too Big'),
        ),
        body: ImageList(imageList),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
//Must define a build method that returns the widget that this widget will show