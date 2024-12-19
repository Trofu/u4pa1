

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
      name: json['name'] ?? 'Unknown',
      house: json['house'] ?? 'Unknown',
      image: json['image'] == '' || json['image'] == null ?
      'https://static.thenounproject.com/png/7729-200.png' : json['image'],
      varita: new VaritaModel(
        madera: varitas['wood'] == '' || json['wood'] == null ?
        'No Wood' : varitas['wood'],
        core: varitas['core'] == '' || json['core'] == null ?
        'No Core' : varitas['core'],
        longitud: varitas['length'] == 0 || json['length'] == null ?
        5 : varitas['length'],
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