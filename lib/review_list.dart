import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  //String pathImage = "assets/img/viajero.jpg";
  //String name = "Tony Tafur";
  String details = "1 review 5 photos";
  String comment = "Me gusta viajar ☺";

  //ReviewList(this.pathImage, this.name, this.details, this.comment);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(
            "assets/img/viajero.jpg", "Viajero Desconocido", details, comment),
        Review("assets/img/licha.jpg", "Sonia Lisseth", details, comment),
        Review("assets/img/tony.jpeg", "Tony Tafur", details, comment),
        Review("assets/img/pelusa.jpg", "Pelusa Pelusa", details, comment),
      ],
    );
  }
}
