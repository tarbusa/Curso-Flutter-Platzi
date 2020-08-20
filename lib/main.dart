import 'package:flutter/material.dart';
import 'package:flutter_nuevo_v1/review_list.dart';
import 'description_place.dart';
import 'gradient_back.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TARBUSA@",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*
  String pathImage = "assets/img/viajero.jpg";
  String name = "Tony Tafur";
  String details = "1 review 5 photos";
  String comment = "Me gusta viajar ☺";
  */
  String cadenaDesc =
      "Machu Picchu es una de las 7 maravillas del mundo más visitadas por los turistas, posee hermosas construcciones a base " +
          "de piedras, que fueron talladas con mucha precisión y detalle, es la obra más importante para los incas por haber sido " +
          "construida en una montaña agreste e inaccesible, dividida en dos grandes sectores, urbano y agrícola separados por una " +
          "gran muralla que desciende por la ladera del cerro hasta llegar a las orillas del rio Vilcanota.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          title: Text('PERÚ ♥'),
        ),*/
        body:
            //new DescriptionPlace("Machu Picchu", 4, cadenaDesc)
            //ReviewList(),
            Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Machu Picchu", 4, cadenaDesc),
            ReviewList()
          ],
        ),
        GradientBack()
      ],
    ));
  }
}
