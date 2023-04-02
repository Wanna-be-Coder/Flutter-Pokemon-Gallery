class ImageModel {
  String id;
  String image;
  String name;

  ImageModel(this.id, this.image, this.name);

  ImageModel.fromJson(List<dynamic> parsedJson)
      : id = parsedJson[0]['number'],
        image = parsedJson[0]['sprite'],
        name = parsedJson[0]['name'];
}
