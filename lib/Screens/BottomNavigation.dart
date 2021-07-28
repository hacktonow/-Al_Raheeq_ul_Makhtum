import 'package:al_raheeq_ul_makhtoom/Screens/ContentList1.dart';
import 'package:al_raheeq_ul_makhtoom/Screens/Home2.dart';
import 'package:al_raheeq_ul_makhtoom/Screens/HomeScreen.dart';
import 'package:al_raheeq_ul_makhtoom/main.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int pageIndex = 0;

  List pageList = [
    HomeScreen(),
    ContentList1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow[200],
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        selectedIconTheme: IconThemeData(color: Colors.blue),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 30,
              color: Colors.black,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.share,
              size: 30,
              color: Colors.black,
            ),
            label: 'Share',
          ),
        ],
      ),
    );
  }
}
