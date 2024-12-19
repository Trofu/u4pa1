class Varita{

  final String madera;
  final String core;
  final double longitud;

  Varita(
    this.madera,
    this.core,
    this.longitud
  );

  @override
  String toString() {
    if(madera.isEmpty || core.isEmpty){
      return ' - Varita -> madera: No Wood, core: No Core, longitud: $longitud';
    }
      return ' - Varita -> madera: $madera, core: $core, longitud: $longitud';
  }
}