import 'dart:async';
import 'dart:convert';
import 'dart:core' ;

import 'package:church/models/catModel.dart';
import 'package:flutter/services.dart' show rootBundle;


Future<String> chargerJson() async{
  return await rootBundle.loadString("assets/enseignement.json");
}

Future loadchargerJson() async {
  final charge = await chargerJson();
  Iterable response = json.decode(charge);
  List<Enseignement> arr = response.map((i) =>Enseignement.fromJson(i)).toList();

  return arr;
}
