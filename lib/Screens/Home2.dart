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
  final List listaPagine = [
    'assets/images/p1.jpeg',
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: PhotoViewGallery.builder(
          reverse: true,
          itemCount: listaPagine.length,
          builder: (BuildContext context, int index) {
            String myImg = listaPagine[index];
            return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(myImg),
              minScale: PhotoViewComputedScale.contained * 0.8,
              maxScale: PhotoViewComputedScale.covered * 2,
            );
          },
          scrollPhysics: BouncingScrollPhysics(),
          backgroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Theme.of(context).canvasColor,
          ),
          enableRotation: true,
        ),
      ),
    );
  }
}
