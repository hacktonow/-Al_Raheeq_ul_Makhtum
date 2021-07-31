import 'package:flutter/material.dart';

import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoView extends StatefulWidget {
  @override
  _PhotoViewDemoState createState() => _PhotoViewDemoState();
}

class _PhotoViewDemoState extends State<PhotoView> {
  final List imageList = [
    'assets/images/p1.jpeg',
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
          builder: (BuildContext context, int index) {
            String myImg = imageList[index];
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
