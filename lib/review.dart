import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage; // = "assets/img/viajero.jpg";
  String name; // = "Tony Tafur";
  String details; // = "1 review 5 photos";
  String comment; // = "Me gusta viajar y conocer nuevos lugares";

  Review(this.pathImage, this.name, this.details, this.comment);
  @override
  Widget build(BuildContext context) {
    final star = Container(
      //margin: EdgeInsets.only(),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 15.0,
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0, right: 10.0),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star],
        )
      ],
    );

    final userName = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );

    /*APILAMOS en una columna 
    (nombre de usiaro, informacion del usuario(aqui hay un ROW con las estrellas), y el comentario)*/
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    /* primera parte de la de la fila, ROW que contiene la foto */
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
