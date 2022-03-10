import 'package:applandingpage/views/app_features_list.dart';
import 'package:applandingpage/views/below_bottom.dart';
import 'package:applandingpage/views/bottom.dart';
import 'package:applandingpage/views/feature_slider.dart';
import 'package:applandingpage/views/footer.dart';
import 'package:applandingpage/views/one_header.dart';
import 'package:applandingpage/views/second_header.dart';
import 'package:applandingpage/views/textimonial.dart';
import 'package:applandingpage/views/watch_video.dart';
import 'package:flutter/material.dart';

/// Description: 首页
/// Time       : 03/10/2022 Thursday
/// Author     : liuyuqi.gov@msn.cn
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            OneHeader(),
            SecondHeader(),
            AppFeaturesList(),
            FeatureSlider(),
            WatchVideo(),
            Textimonial(),
            Bottom(),
            BelowBottom(),
            Footer()
          ],
        ),
      ),
    );
  }
}
