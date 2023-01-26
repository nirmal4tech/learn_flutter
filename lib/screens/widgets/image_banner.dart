import 'package:flutter/material.dart';
import '../../style.dart';

class ImageBanner extends StatelessWidget {
  String imagePath;
  double height;

  ImageBanner({required this.imagePath, this.height = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: height),
      decoration: BoxDecoration(color: TextColorGrey),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }
}
