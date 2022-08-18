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
  List<dynamic> contents=[
    {
      "title":"The Number 42",
      "category":"Philosophy",
      "route":"post1"
    },
    {
      "title":"The Goddess of City Pop",
      "category":"Music",
      "route":"post2"
    },
    {
      "title":"The Roko's Basilisk",
      "category":"Technology",
      "route":"post3"
    }
  ];

  late double opacity=0.0;
  late double opacitytxt=0.0;
  @override
  void initState(){
    super.initState();

    Future.delayed(const Duration(seconds: 2)).then((value)=>{
      setState((){
        opacity=1.0;
        opacitytxt = 0.8;

      })
    });
  }

  @override
  Widget build(BuildContext context) {

    return CarouselSlider(
      options: CarouselOptions(),
      items: imgList
          .map((item) {
                return Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(1), BlendMode.dstATop),
                        image: AssetImage(item),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 350,
                      left: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              AnimatedOpacity(
                                opacity: opacitytxt,
                                  duration: const Duration(seconds: 1),
                                  child: RichText(text:TextSpan(text:"Category: ",
                                      style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white.withOpacity(opacitytxt)),
                                      children:[
                                        TextSpan(text:contents[imgList.indexOf(item)]["category"] +"    ",
                                            style: TextStyle(fontWeight: FontWeight.normal))
                                      ]
                                  )
                                  ),
                              ),
                              AnimatedDefaultTextStyle(
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(opacity)),
                                  duration: const Duration(seconds: 1),
                                  child: const Text(
                                    "Posted by  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                              AnimatedDefaultTextStyle(
                                  style: TextStyle(
                                      color:
                                          Colors.white.withOpacity(opacitytxt)),
                                  duration: const Duration(seconds: 1),
                                  child: const Text("Ayberk")),
                            ],
                          ),
                               TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, "/"+contents[imgList.indexOf(item)]["route"]);
                                },
                                child:AnimatedOpacity(
                                  opacity: opacity,
                                  duration: const Duration(milliseconds: 1500),
                                  child:  Text(
                                  contents[imgList.indexOf(item)]["title"],
                                  style:  TextStyle(
                                  fontSize: 60.0,
                                  fontFamily: "DMSerifText",
                                  color:Colors.white
                                  ),
                                  ),
                                  )
                              ),
                        ],
                      ))
                ]);
              })
          .toList(),
    );
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

  List<dynamic> contents=[
    {
      "title":"The Number 42",
      "category":"Philosophy",
      "route":"post1"
    },
    {
      "title":"The Goddess of City Pop",
      "category":"Music",
      "route":"post2"
    },
    {
      "title":"The Roko's Basilisk",
      "category":"Technology",
      "route":"post3"
    }
  ];

  late double opacity=0.0;
  late double opacitytxt=0.0;
  @override
  void initState(){
    super.initState();

    Future.delayed(const Duration(seconds: 2)).then((value)=>{
      setState((){
        opacity=1.0;
        opacitytxt = 0.8;
      })
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
      ),
      items: imgList
          .map((item) => Stack(children:[
            Container(
              decoration:
              BoxDecoration(
                image: DecorationImage(
                  fit:BoxFit.cover,
                  colorFilter:ColorFilter.mode(Colors.black.withOpacity(1),BlendMode.dstATop),
                  image: AssetImage(item),
                ),
              ),
            ),

            Positioned(
                top: 350,
                left: screenWidth < 769 ? 50 : 250,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AnimatedOpacity(
                          opacity:opacitytxt,
                          duration: const Duration(seconds: 1),
                            child:RichText(text:TextSpan(text:"Category: ",
                                style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),
                                children:[
                                  TextSpan(text:contents[imgList.indexOf(item)]["category"] +"    ",
                                      style: TextStyle(fontWeight: FontWeight.normal))
                                ]
                              )
                            ),
                            // child:Text( contents[imgList.indexOf(item)]["category"] +"    ",)
                        ),
                        AnimatedDefaultTextStyle(style: TextStyle(
                                color: Colors.white.withOpacity(opacity)
                            ),
                            duration: const Duration(seconds: 1), child:
                        const Text("Posted by  ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        )),
                        AnimatedDefaultTextStyle(style:TextStyle(
                                color: Colors.white.withOpacity(opacitytxt)
                            ) ,
                            duration: const Duration(seconds: 1), child: const Text("Ayberk")),
                      ],
                    ),
                     SizedBox(
                          width:  screenWidth < 376 ? 250 : 400,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, "/"+contents[imgList.indexOf(item)]["route"]);
                              },
                              child:AnimatedOpacity(
                                opacity: opacity,
                                duration: const Duration(milliseconds: 1500),
                                child:  Text(
                                  contents[imgList.indexOf(item)]["title"],
                                  style:  TextStyle(
                                      fontSize: 60.0,
                                      fontFamily: "DMSerifText",
                                      color:Colors.white
                                  ),
                                ),
                              )
                          ),
                        ),
                  ],
                )

            )
          ]))
          .toList(),
    );
  }
}