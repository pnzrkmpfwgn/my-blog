import 'package:flutter/material.dart';
import 'package:blog/utils/Navigation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     child: Navigation(),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 930.0,
          child: Navigation(),
        )
      ],
    );
  }
}
