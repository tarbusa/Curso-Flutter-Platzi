import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  String pathImage0 = "assets/img/machupicchu1.jpg";
  String pathImage1 = "assets/img/machupicchu2.jpg";
  String pathImage2 = "assets/img/machupicchu3.jpg";
  String pathImage3 = "assets/img/machupicchu4.jpg";
  String pathImage4 = "assets/img/machupicchu5.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage(pathImage3),
          CardImage(pathImage2),
          CardImage(pathImage1),
          CardImage(pathImage4),
          CardImage(pathImage0),
        ],
      ),
    );
  }
}
