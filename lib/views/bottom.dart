import 'package:flutter_landingpage/dao/general_data.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, right: 40, left: 40),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            closingTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Color(0xCC262626)),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            closingDescription,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 24,
          ),
          Image.asset("assets/$coverImage")
        ],
      ),
    );
  }
}
