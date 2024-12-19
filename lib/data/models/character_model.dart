

import 'package:u4pa1/data/models/varita_model.dart';

class CharacterModel {

  final String name;
  final String house;
  final String image;
  final VaritaModel varita;

  CharacterModel({
    required this.name,
    required this.house,
    required this.image,
    required this.varita,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    Map<String,dynamic> varitas = json['wand'];
    return CharacterModel(
      name: json['name'],
      house: json['house'] ?? 'Unknown',
      image: json['image'] == '' ? 'https://static.thenounproject.com/png/7729-200.png' : json['image'],
      varita: new VaritaModel(
          madera: varitas['wood'] ?? '',
          core: varitas['core'] ?? '',
          longitud: varitas['length'] ?? 0,
      )
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'house': house,
      'image': image,
      'varita': varita,
    };
  }
}