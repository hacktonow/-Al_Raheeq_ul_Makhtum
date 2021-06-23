import 'package:flutter/material.dart';

class Content_List1 extends StatelessWidget {
  const Content_List1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[200],
        title: Center(
          child: Text(
            "الرحق المختوم",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        child: Center(
            child: Text(
          "This is content list page",
          style: TextStyle(fontSize: 30),
        )),
      ),
    );
  }
}
