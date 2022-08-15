import 'package:blog/Pages/Home.dart';
import 'package:blog/Pages/Categories.dart';
import 'package:blog/Pages/About.dart';
import 'package:blog/Pages/Contact.dart';
import 'package:flutter/material.dart';
import 'package:blog/posts/Post1.dart';
import 'package:blog/posts/Post2.dart';
import 'package:blog/posts/Post3.dart';
import 'package:blog/posts/Post4.dart';
import 'package:blog/posts/Post5.dart';
import 'package:blog/posts/Post6.dart';
import 'package:blog/posts/Post7.dart';
import 'package:blog/posts/Post8.dart';



void main() {
  runApp(MaterialApp(
  initialRoute: '/home',
    routes: {
      '/home':(context) => Home(),
      '/categories':(context) => Categories(),
      '/about':(context) => About(),
      '/contact':(context) => Contact(),
      '/post1':(context) => Post1(),
      '/post2':(context) => Post2(),
      '/post3':(context) => Post3(),
      '/post4':(context) => Post4(),
      '/post5':(context) => Post5(),
      '/post6':(context) => Post6(),
      '/post7':(context) => Post7(),
      '/post8':(context) => Post8(),
     },
  ));
}

