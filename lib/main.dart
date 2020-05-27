import 'package:flutter/material.dart';
import 'package:task2/UI/Login.dart';
import 'package:task2/UI/Registeration.dart';
import 'UI/seplash.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'WebView',
  home: splash(),
  routes: <String, WidgetBuilder> {
    '/Registeration': (BuildContext context) => new Registeration(),
    '/Login': (BuildContext context) => new Login(),
  },
));

