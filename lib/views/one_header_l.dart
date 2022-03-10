import 'package:applandingpage/data/general_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OneHeaderL extends StatelessWidget {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: MediaQuery.of(context).size.width > 700
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            appHeading,
            textAlign: MediaQuery.of(context).size.width > 700
                ? null
                : TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            appDescription,
            textAlign: MediaQuery.of(context).size.width > 700
                ? null
                : TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MediaQuery.of(context).size.width > 700
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    launchURL(playStoreUrl);
                  },
                  child: Image.asset(
                    "assets/google_play_button.png",
                    width: 150,
                    height: 50,
                  )),
              GestureDetector(
                  onTap: () {
                    launchURL(playStoreUrl);
                  },
                  child: Image.asset(
                    "assets/app_store_badge.png",
                    width: 180,
                    height: 130,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}