//import 'package:app3components/src/avatars_page.dart';
import 'package:app3components/src/alert_page.dart';
import 'package:app3components/src/rutas/routes.dart';
import 'package:flutter/material.dart';
//import 'package:app3components/src/home_temp2.dart';
//import 'package:app3components/src/home_page.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes',
      debugShowCheckedModeBanner: false,
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('ruta llamada a ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context)=> AletPage());
      },
    );
  }
}