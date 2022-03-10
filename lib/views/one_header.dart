import 'package:applandingpage/utils/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'one_header_l.dart';
import 'one_header_r.dart';

class OneHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 50, top: 70),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xffFEB692), const Color(0xffEA5455)])),
      child: ResponsiveWidget(
        largeScreen: Container(
          width: MediaQuery.of(context).size.width > 1000
              ? 1000
              : MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width > 1000
                      ? 500
                      : MediaQuery.of(context).size.width / 2,
                  child: OneHeaderL()),
              Container(
                  width: MediaQuery.of(context).size.width > 1000
                      ? 500
                      : MediaQuery.of(context).size.width / 2,
                  child: OneHeaderR(
                    assetPath: "header_screenshot.png",
                    fixedSize: true,
                  ))
            ],
          ),
        ),
        smallScreen: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: OneHeaderL()),
            OneHeaderR(
              assetPath: "header_screenshot.png",
              fixedSize: false,
            )
          ],
        ),
      ),
    );
  }
}