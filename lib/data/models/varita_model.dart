
import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:u4pa1/domain/entities/varita.dart';

import '../../domain/entities/character.dart';
import '../../domain/repositories/caracter_repository.dart';

class VaritaModel {
  late final Varita varita;


  VaritaModel({
    required String madera,
    required String core,
    required double longitud}){
    varita = new Varita(madera, core, longitud);
  }

  Map<String, dynamic> toJson() {
    return {
      'wood': varita.madera,
      'core': varita.core,
      'length': varita.longitud,
    };
  }
}
