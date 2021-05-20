import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

// ignore: must_be_immutable
class PhotoViewer extends StatelessWidget {
  String imagePath;
  PhotoViewer({this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: PhotoView(
      imageProvider: AssetImage(imagePath),
    )));
  }
}
