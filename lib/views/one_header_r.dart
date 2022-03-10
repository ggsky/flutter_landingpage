import 'package:flutter/material.dart';

/// Description: 头部布局-右 显示一张图片
/// Time       : 03/10/2022 Thursday
/// Author     : liuyuqi.gov@msn.cn
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
