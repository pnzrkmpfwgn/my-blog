import 'dart:ui';

import 'package:flutter/material.dart';

class GridText extends StatelessWidget {
  final numbers = List.generate(12, (index) => '$index');
  final controller = ScrollController();
  final List<dynamic> contents =[
    {
      "img":"assets/5.jpg",
      "title":"42",
      "text":"asdasdasdasd",
      "by":"Ayberk",
      "route":"post1"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body:buildGridView() ,
      // body: screenWidth > 426 ? buildGridView() : buildMobileGridView(),
    );
  }

  Widget buildGridView() => GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      childAspectRatio: 0.8,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
    ),
    padding: const EdgeInsets.all(10),
    controller: controller,
    itemCount: contents.length,
      itemBuilder: (context, index) {
      final item = contents[index];

      return buildNumber(item["img"], item["title"], item["text"], item["by"], item["route"]);
      });

  // Widget buildMobileGridView() => GridView.builder(
  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //     crossAxisCount: 1,
  //     childAspectRatio: 0.8,
  //     mainAxisSpacing: 1,
  //     crossAxisSpacing: 1,
  //   ),
  //   padding: const EdgeInsets.all(10),
  //   controller: controller,
  //   itemCount: contents.length,
  //   itemBuilder: (context, index){
  //     contents.map((e) {
  //       try{
  //         return buildNumber(e.img, e.title, e.text, e.by, e.route);
  //       }catch(ex){
  //         print(ex);
  //       }
  //     });
  //   },
  // );

  Widget buildNumber(String img,String title,String text,String by,String route) => Container(

    color: Colors.white,
    child: Container(
        decoration: BoxDecoration(
            border: Border(
                right: BorderSide(width: 0.1,color:Colors.black12,),
                bottom:BorderSide(width: 0.1,color:Colors.black12,) ),
        ),
        child:GridTile(
          header: Image.asset(img),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
                ),
                Text(text,style: TextStyle(fontFamily: "Inter"),),
                Text("Posted by" + by)
              ],
            )

        )
    ),
  );
}