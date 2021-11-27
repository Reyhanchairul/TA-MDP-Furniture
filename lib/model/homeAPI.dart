import 'dart:convert';
import 'package:furniture_app/model/homeModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeAPI extends ChangeNotifier {
  getRecommendedMov() async {
    var result = await http.get(Uri.parse(
        'https://5f210aa9daa42f001666535e.mockapi.io/api/products'));

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Detail> sites = data.map((item) => Detail.fromJson(item)).toList();
      return sites;
    } else {
      return <Detail>[];
    }
  }
}
