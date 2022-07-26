import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  List<String> imgList=[
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",

  ];

  @override
  Widget build(BuildContext context) {
  return Container(
  child: CarouselSlider(
  options: CarouselOptions(),
  items: imgList
      .map((item) => Container(
  child: Stack(children:[
    Image.asset(
        item,
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        fit: BoxFit.fill,
    ),
    Positioned(
        child:Text(
            "Lorem ipsum dolor sit amet",
        style:TextStyle(
            fontSize:60.0,
          color:Colors.white,
          fontFamily: "DM Serif Text"
        )
        ),
      top: 100,
      left:20

    )
  ]),
  ))
      .toList(),
  ));
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Builder(
  //       builder: (context) {
  //         final double height = MediaQuery.of(context).size.height;
  //         return CarouselSlider(
  //           options: CarouselOptions(
  //             height: height,
  //             viewportFraction: 1.0,
  //             enlargeCenterPage: false,
  //             // autoPlay: false,
  //           ),
  //           items: imgList
  //               .map((item) => Container(
  //             child: Center(
  //                 child: Image.asset(
  //                   item,
  //                   fit: BoxFit.fill,
  //                   height: height,
  //                 )
  //             ),
  //           ))
  //               .toList(),
  //         );
  //       },
  //     ),
  //   );
  // }
}

class mobileCarousel extends StatelessWidget {
  mobileCarousel({Key? key}) : super(key: key);

  final List<String> imgList=[
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
              child: Center(
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    height: height,
                  )),
            ))
                .toList(),
          );
        },
      ),
    );
  }
}

