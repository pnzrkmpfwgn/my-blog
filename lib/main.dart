import 'package:blog/Pages/Loading.dart';
import 'package:blog/Pages/Home.dart';
import 'package:blog/Pages/Categories.dart';
import 'package:blog/Pages/Blog.dart';
import 'package:blog/Pages/Styles.dart';
import 'package:blog/Pages/About.dart';
import 'package:blog/Pages/Contact.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  initialRoute: '/home',
    routes: {
      '/home':(context) => Home(),
      '/categories':(context) => Categories(),
      '/blog':(context) => Blog(),
      '/styles':(context) => Styles(),
      '/about':(context) => About(),
      '/contact':(context) => Contact()
    },
  ));
}

