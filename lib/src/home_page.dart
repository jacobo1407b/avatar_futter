import 'package:flutter/material.dart';
import 'package:app3components/src/providers/menu_provider.dart';
import 'package:app3components/src/utils/icono_string_util.dart';
import 'package:app3components/src/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarDatos(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data,context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt){
      final WidgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt["icon"]),
        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.purple),
        onTap: (){
          Navigator.pushNamed(context,opt['ruta']);/*
          final ruta = MaterialPageRoute(
            builder: (context)=> AletPage()
            );
            Navigator.push(context, ruta)
       */ },
      );
      opciones..add( WidgetTemp)
               ..add(Divider() );
    });
    return opciones;
  }
}
