import 'package:furniture_app/halaman/home.dart';
import 'package:furniture_app/halaman/catalog.dart';
import 'package:furniture_app/halaman/about.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedPage = 1;

  final _pageChange = [
    HomeCatalog(),
    HomePage(),
    ProfilePage(),
  ];
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: _pageChange[selectedPage],
 bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Catalog',
                backgroundColor: Colors.yellowAccent
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.yellowAccent,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: selectedPage,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black45,
          iconSize: 30,

          elevation: 5,
             onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
