import 'package:flutter/material.dart';
import 'package:blog/utils/Navigation.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Navigation(),
    );
  }
}
