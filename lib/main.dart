import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_trips.dart';
import 'platzi_trips.dart';

void main() {
  /* StatusBar es la parte superior del celular ANDROID donde te muestra tu señal de telefono, tu wifi
  el porcentaje de tu bateria entre otras cosas*/
  //SystemChrome.setEnabledSystemUIOverlays([]); //--->Esto de aqui oculta todo el StatusBar(ANDROID)

  /*Esto de aqui hace TRANSPARENTE el StatusBar*/
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Curso Flutter",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: PlatziTrips());
  }
}
