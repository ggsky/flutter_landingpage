import 'package:flutter_landingpage/dao/general_data.dart';
import 'package:flutter_landingpage/model/app_feature_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'one_header_r.dart';

class AppFeaturesList extends StatefulWidget {
  const AppFeaturesList({super.key});

  @override
  State<AppFeaturesList> createState() => _AppFeaturesListState();
}

class _AppFeaturesListState extends State<AppFeaturesList> {
  List<AppFeatureModel> myAppFeatures = <AppFeatureModel>[];

  @override
  void initState() {
    super.initState();
    myAppFeatures = getAppFeatures();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: myAppFeatures.length,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return AppFeatureTile(
            title: myAppFeatures[index].getFeatureTitle(),
            description: myAppFeatures[index].getFeatureDescription(),
            assetPath: myAppFeatures[index].getImagePath(),
            tileIndex: index,
          );
        });
  }
}

class AppFeatureTile extends StatelessWidget {
  String assetPath, title, description;
  int tileIndex;

  AppFeatureTile(
      {super.key, required this.assetPath,
      required this.title,
      required this.description,
      required this.tileIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width > 700 ? 700 : null,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: MediaQuery.of(context).size.width > 800 ? 40 : 20),
        decoration: tileIndex % 2 == 0
            ? const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffFEB692), Color(0xffEA5455)]))
            : null,
        child: tileIndex % 2 == 0
            ? Container(
                child: MediaQuery.of(context).size.width < 700
                    ? Column(
                        children: <Widget>[
                          OneHeaderR(
                            assetPath: assetPath,
                            fixedSize: false,
                          ),
                          FeatureTileText(
                            title: title,
                            description: description,
                            myIndex: tileIndex,
                          )
                        ],
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          OneHeaderR(
                            assetPath: assetPath,
                            fixedSize: true,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width > 1000
                                ? 500
                                : MediaQuery.of(context).size.width / 2,
                            child: FeatureTileText(
                              title: title,
                              description: description,
                              myIndex: tileIndex,
                            ),
                          )
                        ],
                      ),
              )
            : Container(
                child: MediaQuery.of(context).size.width < 700
                    ? Column(
                        children: <Widget>[
                          OneHeaderR(
                            assetPath: assetPath,
                            fixedSize: false,
                          ),
                          FeatureTileText(
                            title: title,
                            description: description,
                            myIndex: tileIndex,
                          )
                        ],
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: MediaQuery.of(context).size.width > 1000
                                ? 500
                                : MediaQuery.of(context).size.width / 2,
                            child: FeatureTileText(
                              title: title,
                              description: description,
                              myIndex: tileIndex,
                            ),
                          ),
                          OneHeaderR(
                            assetPath: assetPath,
                            fixedSize: true,
                          ),
                        ],
                      ),
              ));
  }
}

class FeatureTileText extends StatelessWidget {
  String title, description;
  int myIndex;

  FeatureTileText(
      {super.key, required this.title, required this.description, required this.myIndex});

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
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width > 700 ? 40 : 20,
          vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            textAlign: MediaQuery.of(context).size.width > 700
                ? null
                : TextAlign.center,
            style: TextStyle(
              color: myIndex % 2 == 0 ? Colors.white : Colors.black87,
              fontSize: 35,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            description,
            textAlign: MediaQuery.of(context).size.width > 700
                ? null
                : TextAlign.center,
            style: TextStyle(
                color: myIndex % 2 == 0 ? Colors.white : Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 16,
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
