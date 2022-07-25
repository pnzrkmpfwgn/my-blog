import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.amber
                ),
                child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
          },
        );
      }).toList(),
    );
  }
}
