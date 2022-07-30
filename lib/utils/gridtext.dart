import 'package:flutter/material.dart';

import '../main.dart';

class GridText extends StatelessWidget {
  final numbers = List.generate(12, (index) => '$index');
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    body: buildGridView(),
  );

  Widget buildGridView() => GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      childAspectRatio: 1,
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
    padding: EdgeInsets.all(50),

    color: Colors.white,
    child: Container(

        decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
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