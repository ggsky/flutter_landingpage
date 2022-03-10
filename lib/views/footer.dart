import 'package:applandingpage/data/general_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  Color textColor = Colors.white;

  Footer({Key? key}) : super(key: key);

  /* textColor = gradients[randomNum].getBottomColor().computeLuminance() > 0.5 ?
  Colors.black54 : Colors.white70;*/

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xffFEB692), const Color(0xffEA5455)])),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _launchURL(aboutUsUrl);
            },
            child: Text(
              "About Us",
              style: TextStyle(
                  fontSize: 13,
                  color: textColor,
                  decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              _launchURL(PrivacypolicyUrl);
            },
            child: Text(
              "Privacy Policy",
              style: TextStyle(
                  fontSize: 13,
                  color: textColor,
                  decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              _launchURL(ContactUsUrl);
            },
            child: Text(
              "Contact Us",
              style: TextStyle(
                  fontSize: 13,
                  color: textColor,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}