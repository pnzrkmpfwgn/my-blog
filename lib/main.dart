import 'package:blog/Pages/Home.dart';
import 'package:blog/Pages/Categories.dart';
import 'package:blog/Pages/About.dart';
import 'package:blog/Pages/Contact.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  initialRoute: '/home',
    routes: {
      '/home':(context) => Home(),
      '/categories':(context) => Categories(),
      '/about':(context) => About(),
      '/contact':(context) => Contact()
    },
  ));
}

