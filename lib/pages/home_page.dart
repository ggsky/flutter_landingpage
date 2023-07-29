import 'package:flutter_landingpage/views/app_features_list.dart';
import 'package:flutter_landingpage/views/below_bottom.dart';
import 'package:flutter_landingpage/views/bottom.dart';
import 'package:flutter_landingpage/views/feature_slider.dart';
import 'package:flutter_landingpage/views/footer.dart';
import 'package:flutter_landingpage/views/one_header.dart';
import 'package:flutter_landingpage/views/second_header.dart';
import 'package:flutter_landingpage/views/textimonial.dart';
import 'package:flutter_landingpage/views/watch_video.dart';
import 'package:flutter/material.dart';

/// Description: 首页
/// Time       : 03/10/2022 Thursday
/// Author     : liuyuqi.gov@msn.cn
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const OneHeader(),
            const SecondHeader(),
            const AppFeaturesList(),
            const FeatureSlider(),
            WatchVideo(),
            const Textimonial(),
            Bottom(),
            const BelowBottom(),
            Footer()
          ],
        ),
      ),
    );
  }
}
