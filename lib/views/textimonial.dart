import 'package:flutter_landingpage/dao/general_data.dart';
import 'package:flutter_landingpage/model/testimonial_model.dart';
import 'package:flutter/material.dart';

class Textimonial extends StatefulWidget {
  @override
  _TextimonialState createState() => _TextimonialState();
}

class _TextimonialState extends State<Textimonial> {
  List<TestimonialModel> myAppTestimonials = <TestimonialModel>[];

  @override
  void initState() {
    super.initState();
    myAppTestimonials = getTestimonials();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xffFEB692), const Color(0xffEA5455)])),
      child: Container(
        width: MediaQuery.of(context).size.width > 800
            ? 800
            : MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: SizedBox(
          height: 400,
          child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: myAppTestimonials.length,
              itemBuilder: (context, index) {
                return TestimonialTile(
                  description: myAppTestimonials[index].getDescription(),
                  assetPathName: myAppTestimonials[index].getImageAssetName(),
                  name: myAppTestimonials[index].getName(),
                  designation: myAppTestimonials[index].getDesignation(),
                  rating: myAppTestimonials[index].getRating(),
                );
              }),
        ),
      ),
    );
  }
}

class TestimonialTile extends StatelessWidget {
  String description, assetPathName, name, designation;
  double rating;

  TestimonialTile(
      {required this.description,
      required this.assetPathName,
      required this.name,
      required this.designation,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 800
          ? 800
          : MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Column(
        children: <Widget>[
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          StarRating(
            rating: rating,
          ),
          SizedBox(
            height: 20,
          ),
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(60)),
              child: Image.asset(
                "assets/$assetPathName",
                height: 50,
                width: 50,
              )),
          SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            designation,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}

//评分
class StarRating extends StatelessWidget {
  double rating = 0;

  StarRating({required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          rating >= 1 ? Icons.star : Icons.star_border,
          color: Color(0xff262626),
          size: 20,
        ),
        Icon(
          rating >= 2 ? Icons.star : Icons.star_border,
          color: Color(0xff262626),
          size: 20,
        ),
        Icon(
          rating >= 3 ? Icons.star : Icons.star_border,
          color: Color(0xff262626),
          size: 20,
        ),
        Icon(
          rating >= 4 ? Icons.star : Icons.star_border,
          color: Color(0xff262626),
          size: 20,
        ),
        Icon(
          rating >= 5 ? Icons.star : Icons.star_border,
          color: Color(0xff262626),
          size: 20,
        ),
      ],
    );
  }
}
