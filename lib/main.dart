
import 'package:furniture_app/halaman/detailHome.dart';
import 'package:furniture_app/halaman/home.dart';
import 'package:furniture_app/halaman/catalog.dart';
import 'package:furniture_app/halaman/intro.dart';
import 'package:furniture_app/model/catalogAPI.dart';
import 'dart:ffi';
import 'package:furniture_app/model/homeAPI.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeAPI>(
          create: (context) => HomeAPI(),
        ),
        ChangeNotifierProvider<CatalogAPI>(
          create: (context) => CatalogAPI(),
        )      
      ],
      child: MaterialApp(
        title: 'yaya',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Intro(),
        },
      ),
    );
  }
}
