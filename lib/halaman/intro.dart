import 'dart:async';
import 'package:furniture_app/halaman/navBar.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/halaman/home.dart';

class Intro extends StatefulWidget {

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => NavBar())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 110,
        ),
        child: Column(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'res/ikeah.png',
                  width: 300,
                  height: 300,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
              width: 40,
            ),
            Text(
              'I K E Y A H',
              style: TextStyle(fontSize: 50, color: Colors.yellow ,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}