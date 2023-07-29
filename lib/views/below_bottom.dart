import 'package:flutter_landingpage/dao/general_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BelowBottom extends StatelessWidget {
  const BelowBottom({super.key});

  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffFEB692), Color(0xffEA5455)])),
      child: Column(
        children: <Widget>[
          Text(
            finaCalltoAction,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 23, fontWeight: FontWeight.w300, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    launchURL(playStoreUrl);
                  },
                  child: Image.asset(
                    "assets/google_play_button.jpg",
                    width: 150,
                    height: 50,
                  )),
              GestureDetector(
                  onTap: () {
                    launchURL(playStoreUrl);
                  },
                  child: Image.asset(
                    "assets/app_store_badge.jpg",
                    width: 180,
                    height: 130,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
