import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final res = await rootBundle.loadString('data/data.json');
    Map dataMap = json.decode(res);
      // print(dataMap['rutas']);
      opciones = dataMap['rutas'];
      return opciones;
  }
}

final menuProvider = new _MenuProvider();
