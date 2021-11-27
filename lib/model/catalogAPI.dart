import 'dart:convert';
import 'package:furniture_app/model/catalogModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CatalogAPI extends ChangeNotifier{
  getRecommendedAct() async{
    var result = await http.get(Uri.parse(
      'https://5f210aa9daa42f001666535e.mockapi.io/api/categories'));
  
  print(result.statusCode);
  print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Catalog> sites = data.map((item) => Catalog.fromJson(item)).toList();
      return sites; 
    } else {
      return <Catalog>[];
    }
  }
}