import 'package:flutter/material.dart';

class GridText extends StatelessWidget {
  final numbers = List.generate(12, (index) => '$index');
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: screenWidth > 426 ? buildGridView() : buildMobileGridView(),
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
    itemCount: numbers.length,
    itemBuilder: (context, index) {
      final item = numbers[index];

      return buildNumber(item);
    },
  );

  Widget buildMobileGridView() => GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
      childAspectRatio: 0.8,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
    ),
    padding: const EdgeInsets.all(10),
    controller: controller,
    itemCount: numbers.length,
    itemBuilder: (context, index) {
      final item = numbers[index];

      return buildNumber(item);
    },
  );

  Widget buildNumber(String number) => Container(

    color: Colors.white,
    child: Container(

        decoration: BoxDecoration(
            border: Border(
                right: BorderSide(width: 0.1,color:Colors.black12,),
                bottom:BorderSide(width: 0.1,color:Colors.black12,) ),
        ),
        child:GridTile(
          header: Text(
            'Header $number',
            textAlign: TextAlign.center,
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
              textAlign: TextAlign.center,
            ),
          ),
          footer: Text(
            'Footer $number',
            textAlign: TextAlign.center,
          ),
        )
    ),
  );
}