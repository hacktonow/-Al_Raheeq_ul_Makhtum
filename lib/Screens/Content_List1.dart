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
            "الرحق المختومی",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        child: Center(child: Text("this is content list page")),
      ),
    );
  }
}
