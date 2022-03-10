import 'package:flutter/material.dart';

class OneHeaderR extends StatelessWidget {
  String assetPath;
  final bool fixedSize;

  OneHeaderR({required this.assetPath, this.fixedSize = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/" + assetPath),
    );
  }
}
