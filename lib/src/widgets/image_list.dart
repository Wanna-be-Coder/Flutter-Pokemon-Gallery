import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> imageList;

  ImageList(this.imageList);

  Widget build(context) {
    print(imageList);
    return ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, int index) {
          return buildImage(imageList[index]);
        });
  }

  Widget buildImage(ImageModel img) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Image.network(img.image),
        ),
        Text(img.name)
      ]),
    );
  }
}
