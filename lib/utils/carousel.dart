import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
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
              Container(
                decoration:
                BoxDecoration(
                  image: DecorationImage(
                    fit:BoxFit.cover,
                    colorFilter:ColorFilter.mode(Colors.black.withOpacity(1),BlendMode.dstATop),
                    image: AssetImage('${item}'),
                  ),
                ),
              ),
              //   Image.asset(
              //     item,
              //     width: MediaQuery.of(context).size.width,
              //     height:MediaQuery.of(context).size.height,
              //     fit: BoxFit.fill,
              //     color: Colors.black.withOpacity(0.01),
              // ),
              Positioned(
                  child:Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Category    ",
                                    style:TextStyle(
                                        color:Colors.white.withOpacity(0.8)
                                    )
                                ),
                                Text("Posted by  ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:Colors.white
                                  ),
                                ),
                                Text("Name",
                                  style: TextStyle(
                                      color:Colors.white.withOpacity(0.8)
                                  ),
                                )
                              ],
                            ),
                            Text(
                                "Lorem ipsum dolor sit amet",
                                style:TextStyle(
                                    fontSize:60.0,
                                    color:Colors.white,
                                    fontFamily: "DMSerifText"
                                )
                            ),
                          ],),

                  ),
                  top: 350,
                  left:250
              )
            ]),
          ))
              .toList(),
        ));
  }
}

class mobileCarousel extends StatefulWidget {
  const mobileCarousel({Key? key}) : super(key: key);

  @override
  State<mobileCarousel> createState() => _mobileCarouselState();
}

class _mobileCarouselState extends State<mobileCarousel> {

  List<String> imgList=[
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
          ),
          items: imgList
              .map((item) => Container(
            child: Stack(children:[
              Container(
                decoration:
                BoxDecoration(
                  image: DecorationImage(
                    fit:BoxFit.cover,
                    colorFilter:ColorFilter.mode(Colors.black.withOpacity(1),BlendMode.dstATop),
                    image: AssetImage('${item}'),
                  ),
                ),
              ),

              Positioned(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Category    ",
                              style:TextStyle(
                                  color:Colors.white.withOpacity(0.8)
                              )
                          ),
                          Text("Posted by  ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.white
                            ),
                          ),
                          Text("Name",
                            style: TextStyle(
                                color:Colors.white.withOpacity(0.8)
                            ),
                          )
                        ],
                      ),
                      Text(
                          "Lorem ipsum dolor sit amet",
                          style:TextStyle(
                              fontSize:60.0,
                              color:Colors.white,
                              fontFamily: "DMSerifText"
                          )
                      ),
                    ],
                  ),
                  top: 350,
                  left:250

              )
            ]),
          ))
              .toList(),
        ));
  }
}