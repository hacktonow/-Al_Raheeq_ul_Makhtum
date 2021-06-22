import 'dart:developer';

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
            "الرحیق المختوم",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        width: 500,
        height: 800,
        color: Colors.yellow[100],
        child: Stack(alignment: Alignment.topCenter, children: [
          Positioned(
              top: 10,
              child: Text('My name is Rashid i am working just for Allah .  ')),
          Positioned(
            bottom: 100,
            right: 180,
            child: FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 25,
              ),
              backgroundColor: Colors.yellow[400],
            ),
          ),
          Positioned(
            bottom: 70,
            right: 180,
            child: Text(
              'Start',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
