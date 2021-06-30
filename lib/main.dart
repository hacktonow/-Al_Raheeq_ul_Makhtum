import 'dart:async';

import 'package:al_raheeq_ul_makhtoom/Screens/ContentList1.dart';
import 'package:al_raheeq_ul_makhtoom/Screens/HomeScreen.dart';

import 'package:flutter/material.dart';

import 'Screens/BottomNavigation.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/Home': (context) => BottomNavigation(),
        '/list1': (context) => ContentList1(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            SizedBox(
              height: 200,
            ),
            Image.asset(
              'assets/images/logo2.jpg',
              height: 200,
            ),

            SizedBox(
              height: 200,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
