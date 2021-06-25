import 'package:flutter/material.dart';

class ContentList1 extends StatelessWidget {
  const ContentList1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Wellcome to list page",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
