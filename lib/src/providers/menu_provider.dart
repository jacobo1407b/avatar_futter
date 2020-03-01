import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider{
  List<dynamic> opciones=[];

  _MenuProvider(){
    cargarDatos();
  }

  Future<List<dynamic>> cargarDatos() async {
   final respuesta = await rootBundle.loadString('data/menu_opts.json');
   Map datosMap =json.decode( respuesta );
   print( datosMap["rutas"]);
   opciones = datosMap["rutas"];
   return opciones;
  }
}

final menuProvider = new _MenuProvider();



/*
"rutas" : [
        {
            "ruta" : "alert",
            "icon" : "add_alert",
            "texto": "Alertas"
        },
        {
            "ruta" : "avatar",
            "icon" : "accessibility",
            "texto": "Avatars"
        },
        {
            "ruta" : "card",
            "icon" : "folder_open",
            "texto": "Cards - Tarjetas"
        }
    ]
*/