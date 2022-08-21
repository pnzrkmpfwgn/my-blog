import 'package:flutter/material.dart';

class GridText extends StatefulWidget {
  const GridText({Key? key}) : super(key: key);

  @override
  State<GridText> createState() => _GridTextState();
}

class _GridTextState extends State<GridText> {


  final controller = ScrollController();

  final List<dynamic> contents =[
    {
      "img":"assets/6.jpg",
      "title":"The Number 42",
      "text":"The ultimate answer, for the ultimate question, 42. Adams Douglas, introduces this concept in his book The Hitchhiker's Guide to the Galaxy in a BBC News report...",
      "by":"Ayberk",
      "route":"post1"
    },
    {
      "img":"assets/7.jpg",
      "title":"The Goddess of City Pop",
      "text":"It's past midnight, you are in the lonesome streets. Closed shops' neon lights are shining through, There's maybe a drizzle and you hear a distant fascinating music. It's not really...",
      "by":"Ayberk",
      "route":"post2"
    },
    {
      "img":"assets/3.jpg",
      "title":"Roko's Basilisk",
      "text":"Warning: Potential information hazard (Some people might get paranoid reading this thought experiment). Roko's Basilisk is a thought experiment about potential risks involved... ",
      "by":"Ayberk",
      "route":"post3"
    },
    {
      "img":"assets/8.jpg",
      "title":"Shameless Virtue",
      "text":"It comes to a point when you wonder 'If nearly every people you see on social media are perfectly good and virtuos people why aren't we living in a Utopia yet?'. Pretty good question ...",
      "by":"Ayberk",
      "route":"post4"
    },
    {
      "img":"assets/9.jpg",
      "title":"VaporWave",
      "text":"Vaporwave is a music genre branching from electronic Chillwave. But the unique and iconic visual aesthetic cultivated alongside it is now, debatably, more popular and recognizable than...",
      "by":"Ayberk",
      "route":"post5"
    },
    {
      "img":"assets/10.jpg",
      "title":"Dyson Sphere",
      "text":"A Dyson sphere is a hypothetical megastructure that completely encompasses a star and captures a large percentage of its solar power output. The concept is a thought experiment that attempts ...",
      "by":"Ayberk",
      "route":"post6"
    },
    {
      "img":"assets/11.jpg",
      "title":"Eight Spiders",
      "text":"The belief that we swallow an average of eight spiders in our sleep every year has become so ingrained in popular culture that many people now accept it as fact. The reality, however, is quite different...",
      "by":"Ayberk",
      "route":"post7"
    },
    {
      "img":"assets/12.jpg",
      "title":"Antikythera mechanism",
      "text":"The Antikythera mechanism (/ˌæntɪkɪˈθɪərə/ AN-tih-kih-THEER-ə) is an Ancient Greek hand-powered orrery, described as the oldest example of an analogue computer used to predict astronomical positions ...",
      "by":"Ayberk",
      "route":"post8"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
       body: screenWidth > 769 ? buildGridView(context) : buildMobileGridView(context),
    );
  }

  Widget buildGridView(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
     return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio:screenWidth < 1025 ? 0.25 : 0.6,
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
        ),
        padding: const EdgeInsets.all(10),
        controller: controller,
        itemCount: contents.length,
        itemBuilder: (context, index) {
          final item = contents[index];

          return buildNumber(
              item["img"], item["title"], item["text"], item["by"],
              item["route"], context);
        });
  }

  Widget buildMobileGridView(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
   return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: screenWidth < 321 ? 0.1 :0.35,
        mainAxisSpacing:1,
        crossAxisSpacing: 1,
      ),
      padding: const EdgeInsets.all(10),
      controller: controller,
      itemCount: contents.length,
      itemBuilder: (context, index){
        final item = contents[index];

        return buildNumber(item["img"], item["title"], item["text"], item["by"], item["route"],context);
      },
    );
  }

  Widget buildNumber(String img,String title,String text,String by,String route,BuildContext context){
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Container(
          decoration: const BoxDecoration(
            border: Border(
                right: BorderSide(width: 0.1,color:Colors.black12,),
                bottom:BorderSide(width: 0.1,color:Colors.black12,) ),
          ),
          child:GridTile(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: screenWidth < 769 ? CrossAxisAlignment.center:CrossAxisAlignment.start,
                children: [
                 Center(child: Container(
                   width:  400,
                   height:screenWidth < 769 ? 500 :200,
                   // padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                       image: DecorationImage(
                           image: AssetImage(img),
                           fit:BoxFit.fill
                       )
                   ),
                 ),),
                  TextButton(onPressed: (){
                    Navigator.pushReplacementNamed(context, "/${route.toLowerCase()}");
                  }, child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize:screenWidth < 426 ? 30 : 38,color: Colors.black),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: screenWidth < 321 ? 10 : screenWidth < 426 ? 0 :10,bottom:screenWidth < 321? 10 : screenWidth < 426 ? 0 :10),
                    child: RichText(text: TextSpan(
                        text: "Posted By ",
                        style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                        children: [
                          TextSpan(text:by,style: const TextStyle(fontWeight: FontWeight.normal))
                        ]
                    )),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(text,style: TextStyle(fontFamily: "Inter",fontSize: screenWidth < 426 ? 20 : 22),),
                  ),
                ],
              )
          )
      ),
    );
  }
}