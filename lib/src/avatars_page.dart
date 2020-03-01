import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('AVATAR'),
      actions: <Widget>[
        Container(
          padding: EdgeInsets.all(7.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/lisa.jpg'),
          ),
        ),
        Container(
          padding: EdgeInsets.all(7.0),
          child: CircleAvatar(
            child: Text('JR'),
            backgroundColor: Colors.green,
            ),
        )
      ],
      ),
      body: Center(
        child: FadeInImage(
          image: AssetImage('assets/lisa.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      );
  }
}