import 'package:flutter/material.dart';

import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoView extends StatefulWidget {
  @override
  _PhotoViewDemoState createState() => _PhotoViewDemoState();
}

class _PhotoViewDemoState extends State<PhotoView> {
  final List<String> imageList = [
    'assets/images/p1.jpeg',
    'assets/images/p2.jpeg',
    'assets/images/p3.jpeg',
    'assets/images/p4.jpeg',
    'assets/images/p5.jpeg',
    'assets/images/p6.jpeg',
    'assets/images/p7.jpeg',
    'assets/images/p8.jpeg',
    'assets/images/p9.jpeg',
    'assets/images/p10.jpeg',
    'assets/images/p11.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // add this body tag with container and photoview widget
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: PhotoViewGallery.builder(
          reverse: true,
          itemCount: imageList.length,
          builder: (context, index) {
            return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(imageList.elementAt(index)),
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
