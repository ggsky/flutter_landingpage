import 'package:flutter_landingpage/dao/general_data.dart';
import 'package:flutter/material.dart';

class SecondHeader extends StatelessWidget {
  const SecondHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/test.jpg",
            width: 40,
            height: 40,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            maintitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25, color: headerColor, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            maindescription,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
