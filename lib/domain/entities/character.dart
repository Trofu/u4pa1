import 'package:u4pa1/domain/entities/varita.dart';

class Character {
  final String name;
  final String house;
  final String image;
  final Varita varita;

  Character({
    required this.name,
    required this.house,
    required this.image,
    required this.varita
  });

  @override
  String toString() {
    return 'Character{name: $name, house: $house, image: $image, varita: $varita}';
  }
}