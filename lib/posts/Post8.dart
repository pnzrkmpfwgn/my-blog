import 'package:blog/utils/content_view.dart';
import 'package:flutter/material.dart';
import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';
import 'package:blog/utils/Navigation.dart';



class MobileViewPost8 extends StatefulWidget {
  const MobileViewPost8({Key? key}) : super(key: key);

  @override
  _MobileViewPost8State createState() {
    return _MobileViewPost8State();
  }
}

class _MobileViewPost8State extends State<MobileViewPost8> with TickerProviderStateMixin {
  late double screenWidth;
  late double screenHeight;

  var scaffoldKey =GlobalKey<ScaffoldState>();


  List<ContentView> contentViews =[
    ContentView(tab: const CustomTab(title:"Home"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: const CustomTab(title:"Categories"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: const CustomTab(title:"About"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: const CustomTab(title:"Contact"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
  ];
  @override
  Widget build(BuildContext context) {
    screenWidth=MediaQuery.of(context).size.width;
    screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      endDrawer: drawer(),
      key:scaffoldKey,
      body: LayoutBuilder(
        builder: (context,constrains)=> SingleChildScrollView(
            child:ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constrains.minHeight,
                ),
                child:IntrinsicHeight(
                  // child:showLoading ? SizedBox(width:screenWidth,height:screenHeight,child: FadeTransition(opacity: _animation,child: Loading(),),) :
                  child:Column(

                    children:<Widget> [
                      Flexible(flex: screenWidth < 769 ?2 :1,child:Container( child: mobileView(),),),
                      Flexible(child:Container(
                        margin: const EdgeInsets.only(top:50),

                        child: Image.asset("assets/12.jpg"),),),
                      Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 50),
                                    child: Text("The Antikythera Mechanism",style: TextStyle(
                                        fontFamily: "DMSerifText",
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth < 769 ? 25 :45
                                    ),),),
                                  Container(
                                    decoration: const BoxDecoration(
                                        border:Border(
                                            left: BorderSide(width: 0.3,color: Colors.black),
                                            right: BorderSide(width: 0.3,color: Colors.black)
                                        )
                                    ),
                                    margin: const EdgeInsets.only(top: 50,bottom: 50),
                                    padding: const EdgeInsets.only(left:20,right:20),

                                    child: const Text(
                                        "   The Antikythera mechanism (/ˌæntɪkɪˈθɪərə/ AN-tih-kih-THEER-ə) is an Ancient Greek hand-powered orrery, described as the oldest example of an analogue computer used to predict astronomical positions and eclipses decades in advance. It could also be used to track the four-year cycle of athletic games which was similar to an Olympiad, the cycle of the ancient Olympic Games.\n\n"
                                  "This artefact was among wreckage retrieved from a shipwreck off the coast of the Greek island Antikythera in 1901 On 17 May 1902, it was identified as containing a gear by archaeologist Valerios Stais. The device, housed in the remains of a wooden-framed case of (uncertain) overall size 34 cm × 18 cm × 9 cm (13.4 in × 7.1 in × 3.5 in was found as one lump, later separated into three main fragments which are now divided into 82 separate fragments after conservation efforts. Four of these fragments contain gears, while inscriptions are found on many others. The largest gear is approximately 13 centimetres (5.1 in) in diameter and originally had 223 teeth.\n\n"
                                  "In 2008, a team led by Mike Edmunds and Tony Freeth at Cardiff University used modern computer x-ray tomography and high resolution surface scanning to image inside fragments of the crust-encased mechanism and read the faintest inscriptions that once covered the outer casing of the machine. This suggests that it had 37 meshing bronze gears enabling it to follow the movements of the Moon and the Sun through the zodiac, to predict eclipses and to model the irregular orbit of the Moon, where the Moon's velocity is higher in its perigee than in its apogee. This motion was studied in the 2nd century BC by astronomer Hipparchus of Rhodes, and it is speculated that he may have been consulted in the machine's construction.There is speculation that a portion of the mechanism is missing and it also calculated the positions of the five classical planets.\n\n"
                                      ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("assets/0.jpg",width: 150,height: 150,),
                                      Container(
                                        margin: const EdgeInsets.only(top:10),
                                        child:
                                        RichText(text: const TextSpan(
                                            text: "Posted By\n",
                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.black),
                                            children: [
                                              TextSpan(text:"Ayberk",style: TextStyle(fontWeight: FontWeight.normal))
                                            ]
                                        )),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top:15),
                                        child:const Text(
                                          "FullStack Developer",
                                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: Column(
                                      children: [
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/post1");
                                        }, child: const Text("Next>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                        const Text("---",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),),
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/post7");
                                        }, child: const Text("<Previous",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      // Flexible(child: FooterDesktop(),flex:screenWidth < 321 ? 5 : screenWidth < 769 ? 4 : 2)
                    ],
                  ),

                )
            )
        ),
      ),);
  }
  Widget mobileView(){
    screenWidth=MediaQuery.of(context).size.width;
    return Container(
        width: screenWidth,
        color: Colors.black,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Logo.png',),
                      fit:BoxFit.fill
                  )
              ),
            ),
            Row(
              children: [IconButton(onPressed: () => scaffoldKey.currentState?.openEndDrawer(),
                iconSize: screenWidth*0.08, icon: const Icon(Icons.menu_rounded),
                color: Colors.white,),
                IconButton(onPressed: (){
                  showSearch(
                    context: context,
                    delegate:MySearchDelegate(),
                  );
                }, icon:  Icon(Icons.search,color: Colors.white,size: screenWidth*0.05,))],
            ),

          ],
        )
    );
  }

  Widget drawer(){
    return Drawer(
      child: ListView(
          children: [
            Container(height: screenHeight * 0.1,)
          ] + contentViews.map((e) => Container(
            child: ListTile(title:Text(e.tab.title),onTap:(){
              Navigator.pushReplacementNamed(context, "/${e.tab.title.toLowerCase()}");
            }),
          )).toList()
      ),
    );
  }
}



class Post8 extends StatefulWidget {
  const Post8({Key? key}) : super(key: key);

  @override
  State<Post8> createState() => _Post8State();
}

class _Post8State extends State<Post8> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:screenWidth < 1025 ? const MobileViewPost8() : LayoutBuilder(
        builder: (context,constrains)=> SingleChildScrollView(
            child:ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constrains.minHeight,
                ),
                child:IntrinsicHeight(
                  // child:showLoading ? SizedBox(width:screenWidth,height:screenHeight,child: FadeTransition(opacity: _animation,child: Loading(),),) :
                  child:Column(
                    children:<Widget> [
                      Flexible(flex: screenWidth < 769 ?2 :1,child:const SizedBox( height:200,child: Navigation(),),),
                      Flexible(child:Image.asset("assets/12.jpg",width: screenWidth < 769 ? 500 : 1000,),),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/0.jpg",width: 150,height: 150,),
                                  Container(
                                    margin: const EdgeInsets.only(top:10),
                                    child:
                                    RichText(text: const TextSpan(
                                        text: "Posted By\n",
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.black),
                                        children: [
                                          TextSpan(text:"Ayberk",style: TextStyle(fontWeight: FontWeight.normal))
                                        ]
                                    )),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top:15),
                                    child:const Text(
                                      "FullStack Developer",
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 50),
                                    child: Text("The Antikythera Mechanism",style: TextStyle(
                                        fontFamily: "DMSerifText",
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth < 769 ? 25 :45
                                    ),),),
                                  Container(
                                    decoration: const BoxDecoration(
                                        border:Border(
                                            left: BorderSide(width: 0.3,color: Colors.black),
                                            right: BorderSide(width: 0.3,color: Colors.black)
                                        )
                                    ),
                                    margin: const EdgeInsets.only(top: 50,bottom: 50),
                                    padding: const EdgeInsets.only(left:20,right:20),
                                    width: screenWidth < 769 ? 600 : 1000,
                                    child: const Text("   The Antikythera mechanism (/ˌæntɪkɪˈθɪərə/ AN-tih-kih-THEER-ə) is an Ancient Greek hand-powered orrery, described as the oldest example of an analogue computer used to predict astronomical positions and eclipses decades in advance. It could also be used to track the four-year cycle of athletic games which was similar to an Olympiad, the cycle of the ancient Olympic Games.\n\n"
                                        "This artefact was among wreckage retrieved from a shipwreck off the coast of the Greek island Antikythera in 1901 On 17 May 1902, it was identified as containing a gear by archaeologist Valerios Stais. The device, housed in the remains of a wooden-framed case of (uncertain) overall size 34 cm × 18 cm × 9 cm (13.4 in × 7.1 in × 3.5 in was found as one lump, later separated into three main fragments which are now divided into 82 separate fragments after conservation efforts. Four of these fragments contain gears, while inscriptions are found on many others. The largest gear is approximately 13 centimetres (5.1 in) in diameter and originally had 223 teeth.\n\n"
                                        "In 2008, a team led by Mike Edmunds and Tony Freeth at Cardiff University used modern computer x-ray tomography and high resolution surface scanning to image inside fragments of the crust-encased mechanism and read the faintest inscriptions that once covered the outer casing of the machine. This suggests that it had 37 meshing bronze gears enabling it to follow the movements of the Moon and the Sun through the zodiac, to predict eclipses and to model the irregular orbit of the Moon, where the Moon's velocity is higher in its perigee than in its apogee. This motion was studied in the 2nd century BC by astronomer Hipparchus of Rhodes, and it is speculated that he may have been consulted in the machine's construction.There is speculation that a portion of the mechanism is missing and it also calculated the positions of the five classical planets.\n\n"
                                      ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/post1");
                                    }, child: const Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/post7");
                                    }, child: const Text("Previous",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      // Flexible(child: FooterDesktop(),flex:screenWidth < 321 ? 5 : screenWidth < 769 ? 4 : 2)
                    ],
                  ),

                )
            )
        ),
      ),
      persistentFooterButtons: [
        Container(
          color: Colors.grey[350],
          height: 25,
          child:  Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "©Copyright Ülkü Ayberk Yiğit",
                style: TextStyle(fontFamily: "Inter",color: Colors.black.withOpacity(0.6)),
              ),
            ],
          ),
        )
      ],
    );
  }
}

