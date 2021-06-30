import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[200],
        title: Center(
          child: Text(
            "الرحق المختوم",
            style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'jameel'),
          ),
        ),
      ),
      body: Container(
        width: 500,
        height: 800,
        color: Colors.yellow[100],
        child: Stack(alignment: Alignment.topCenter, children: [
          Positioned(
              top: 200,
              child: Image.asset(
                'assets/images/front.png',
                height: 225,
              )),
          Positioned(
            bottom: 100,
            right: 190,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Home");
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 25,
              ),
              backgroundColor: Colors.yellow[400],
            ),
          ),
          Positioned(
            bottom: 70,
            right: 190,
            child: Text(
              'Start',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
