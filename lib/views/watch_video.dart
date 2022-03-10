
import 'package:applandingpage/data/general_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WatchVideo extends StatelessWidget {
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
      padding: EdgeInsets.symmetric(vertical: 150),
      color: Colors.black87,
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onTap: () {
          launchURL(youtubeVideoUrl);
        },
        child: Column(
          children: <Widget>[
            Text(
              "Watch the video",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.play_circle_filled,
              color: Colors.white,
              size: 70,
            )
          ],
        ),
      ),
    );
  }
}