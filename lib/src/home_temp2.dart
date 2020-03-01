import 'package:flutter/material.dart';


class HomePageTemp2 extends StatelessWidget {
  final opciones = ["Popi","Rufo","Firulais","perrin","mit","la del perrote"];
  final opciones2 = ["Perro policia","Perro bombero","Perro de trieno","perro valiente","Alameda","paya"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homa page temporal 1'),
      ),
        body: ListView(
          children: _crearItemsCorta()
      ),
    );
  }

 List <Widget> _crearItemsCorta() {
   return opciones.map((item){
     return Column(
       children: <Widget>[
         ListTile(
           title: Text(item),
           subtitle: Text("subtitulo"),
           leading: Icon(Icons.access_alarms),
           trailing: Icon(Icons.keyboard_arrow_right),
           onTap: (){},
         ),
         Divider()
       ],
       );
   }).toList();
  }/*
  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();
    int i =0;
    for(String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text(opciones2[i]),
        onTap:(){},
      );
      lista..add(tempWidget)
           ..add(Divider());
           i++;
    }
    return lista;
  }*/

}