import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 3;

  final List listaPagine = [
    'assets/images/applogo.jpg',
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('# $_currentIndex'),
      ),
      body: PhotoViewGallery.builder(
        reverse: true,
        itemCount: listaPagine.length,
        builder: (BuildContext context, int index) {
          String myImg = listaPagine[index];

          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(myImg),
          );
        },
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
