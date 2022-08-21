import 'package:flutter_landingpage/utils/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'one_header_l.dart';
import 'one_header_r.dart';

class OneHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(bottom: 50, top: 70),
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xffFEB692), Color(0xffEA5455)])),
      child: ResponsiveWidget(
        largeScreen: Container(
          width: _size.width > 1000 ? 1000 : _size.width,
          height: _size.height,
          child: Row(
            children: <Widget>[
              Container(
                  width: _size.width > 1000 ? 500 : _size.width / 2,
                  child: OneHeaderL()),
              Container(
                  width: _size.width > 1000 ? 500 : _size.width / 2,
                  child: OneHeaderR(
                    assetPath: "header_screenshot.jpg",
                    fixedSize: true,
                  ))
            ],
          ),
        ),
        smallScreen: Column(
          children: <Widget>[
            Container(
                //水平padding 20
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: OneHeaderL()),
            OneHeaderR(
              assetPath: "header_screenshot.jpg",
              fixedSize: false,
            )
          ],
        ),
      ),
    );
  }
}
