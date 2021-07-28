import 'package:flutter/material.dart';

import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoViewDemo extends StatefulWidget {
  @override
  _PhotoViewDemoState createState() => _PhotoViewDemoState();
}

class _PhotoViewDemoState extends State<PhotoViewDemo> {
  final imageList = [
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PhotoView Demo"),
      ),
      // add this body tag with container and photoview widget
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: PhotoViewGallery.builder(
          itemCount: imageList.length,
          builder: (context, index) {
            return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(
                imageList[index],
              ),
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