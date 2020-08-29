import 'package:flutter/material.dart';
import 'review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String cadenaDesc =
      "Machu Picchu es una de las 7 maravillas del mundo más visitadas por los turistas, posee hermosas construcciones a base " +
          "de piedras, que fueron talladas con mucha precisión y detalle, es la obra más importante para los incas por haber sido " +
          "construida en una montaña agreste e inaccesible, dividida en dos grandes sectores, urbano y agrícola separados por una " +
          "gran muralla que desciende por la ladera del cerro hasta llegar a las orillas del rio Vilcanota.";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            /*Aqui esta El nombre del sitio, las 5 estrellas y la descripcion del sitio*/
            DescriptionPlace("Machu Picchu", 4, cadenaDesc),
            /* Aqui estan la lista de los usuarios que le an comentado CLASE(ReviewList)*/
            ReviewList(),
            //GradientBack() --> AQUI NO VA XD
          ],
        ),
        //GradientBack("Popular"),
        HeaderAppBar()
      ],
    );
  }
}
