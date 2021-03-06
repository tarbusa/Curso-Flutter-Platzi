import 'package:flutter/material.dart';
import 'boton.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int nStar;
  String descriptionPlace;

  /* METODO CONSTRUCTOR */
  DescriptionPlace(this.namePlace, this.nStar, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
      margin: EdgeInsets.only(top: 350.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 350.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 350.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 350.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: "Bangers",
                fontSize: 25.0, // tamaño de letra
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star_half, star_border],
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 13.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            fontWeight: FontWeight.w300,
            color: Color(0xFF56575a)),
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_stars, description, ButtonPurple("Navigate")],
    );
  }
}
