import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  final String url1 = 'https://cdn.pixabay.com/photo/2019/08/06/23/52/elephant-4389434__340.jpg';
  final String url2 = 'https://cdn.pixabay.com/photo/2019/08/06/23/52/elephant-4389434__340.jpg';
  final String url3 = 'https://cdn.pixabay.com/photo/2019/08/06/23/52/elephant-4389434__340.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(url1),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(url2),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(url3),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 8.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.purple),
            title: Text('Titulo de la targeta #1'),
            subtitle: Text(
                'Lorem input dolor siamet demir ensimt turum asiemet ensure huamet feril aste paya que estas invocando al chamucho, oye tines tiempo de hablar, no existio un error'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2(String url) {
    final card = Container(
        child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(url),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 500),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Playa de isuntza'),
        ),
      ],
    )
  );
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0,10.0),
        )
      ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      )
  );
  }
}
