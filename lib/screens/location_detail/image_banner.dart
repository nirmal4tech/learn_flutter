import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  String _imagePath;

  ImageBanner(this._imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 300),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(_imagePath, fit: BoxFit.cover),
    );
  }
}
