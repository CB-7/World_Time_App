import 'package:flutter/material.dart';
import 'package:world_time_app/pages/load.dart';
import 'pages/home.dart';
import 'pages/choose_location.dart';
import 'pages/loading.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/load': (context) => Load(),
      '/home': (context) => Home(),
      '/loading': (context) => Loading(),
      '/location': (context) => Location(),
    },
  ));
}
