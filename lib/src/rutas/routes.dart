import 'package:flutter/material.dart';

import '../alert_page.dart';
import '../avatars_page.dart';
import '../cards_page.dart';
import '../home_page.dart';
import '../home_temp.dart';
import '../home_temp1.dart';
import '../home_temp2.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AletPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'home_temp':(BuildContext context)=> HomePageTemp(),
    'home_temp1':(BuildContext context)=> HomePageTemp1(),
    'home_temp2':(BuildContext context)=>HomePageTemp2(),
    'card': (BuildContext contexto) => CardsPage(),
  };
}
