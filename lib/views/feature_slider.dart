import 'package:applandingpage/data/general_data.dart';
import 'package:applandingpage/model/feature_tile_model.dart';
import 'package:applandingpage/utils/responsive_widget.dart';
import 'package:flutter/material.dart';

class FeatureSlider extends StatefulWidget {
  @override
  _FeatureSliderState createState() => _FeatureSliderState();
}

class _FeatureSliderState extends State<FeatureSlider> {
  List<FeatureTileModel> features1 =  <FeatureTileModel>[];
  List<FeatureTileModel> features2 =  <FeatureTileModel>[];

  List<String> screenshots =  <String>[];

  @override
  void initState() {
    super.initState();
    features1 = getFeaturesTiles1();
    features2 = getFeaturesTiles2();

    for (int i = 0; i < features1.length; i++) {
      screenshots.add(features1[i].getImagePath());
    }
    for (int i = 0; i < features2.length; i++) {
      screenshots.add(features2[i].getImagePath());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            "Feature Rich. No bloat.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Color(0xCC262626)),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Donec sit eget metus odio. Aliqua dolor metus in tincidunt condimentum.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: ResponsiveWidget(
              largeScreen: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ListView.builder(
                        itemCount: features1.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return FeaturesTile(
                            title: features1[index].getTitle(),
                            description: features1[index].getDesc(),
                          );
                        }),
                  ),
                  Container(
                    height: 650,
                    width: MediaQuery.of(context).size.width / 3,
                    child: ListView.builder(
                        itemCount: screenshots.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              child:
                              Image.asset("assets/" + screenshots[index]));
                        }),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ListView.builder(
                        itemCount: features2.length,
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return FeaturesTile(
                            title: features2[index].getTitle(),
                            description: features2[index].getDesc(),
                          );
                        }),
                  ),
                ],
              ),
              smallScreen: Column(
                children: <Widget>[
                  Container(
                    child: ListView.builder(
                        itemCount: features1.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return FeaturesTile(
                            title: features1[index].getTitle(),
                            description: features1[index].getDesc(),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 650,
                    width: 350,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: screenshots.length,
                        itemBuilder: (context, index) {
                          return Image.asset("assets/" + screenshots[index]);
                        }),
                  ),
                  Container(
                    child: ListView.builder(
                        itemCount: features2.length,
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return FeaturesTile(
                            title: features2[index].getTitle(),
                            description: features2[index].getDesc(),
                          );
                        }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class FeaturesTile extends StatelessWidget {
  String title, description;

  FeaturesTile({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/test.jpg",
            width: 40,
            height: 40,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xCC262626)),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}