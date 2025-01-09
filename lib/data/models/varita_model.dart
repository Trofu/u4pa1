import '../../domain/entities/varita.dart';

class VaritaModel {
  late final Varita varita;


  VaritaModel({
    required String madera,
    required String core,
    required double longitud
  }){
    varita = new Varita(madera, core, longitud);
  }

  Map<String, dynamic> toJson() {
    return {
      'wood': varita.madera,
      'core': varita.core,
      'length': varita.longitud,
    };
  }

  @override
  String toString() {
    return varita.toString();
  }

}
