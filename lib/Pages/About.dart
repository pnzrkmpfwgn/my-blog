import 'package:blog/utils/content_view.dart';
import 'package:flutter/material.dart';
import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';
import 'package:blog/utils/Navigation.dart';
import 'package:blog/utils/footer.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';


class MobileViewAbout extends StatefulWidget {
  const MobileViewAbout({Key? key}) : super(key: key);

  @override
  _MobileViewAboutState createState() {
    return _MobileViewAboutState();
  }
}

class _MobileViewAboutState extends State<MobileViewAbout> with TickerProviderStateMixin {
  late double screenWidth;
  late double screenHeight;

  late ScrollController scrollController = ScrollController();

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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: (){
            scrollController.animateTo(0, duration: const Duration(seconds:2 ), curve:Curves.fastOutSlowIn);
          },
          child:const Icon(Icons.arrow_upward,color: Colors.white,),
        ),
        body: FooterView(
            footer: Footer(
                child:Column(
                  children: const [
                    Text('Copyright ©2022, All Rights Reserved.',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0, color: Color(0xFF162A49)),),
                    Text('Ülkü Ayberk Yiğit',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,color: Color(0xFF162A49)),),
                  ],
                )
            ),
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  LayoutBuilder(
                    builder: (context,constrains)=> SingleChildScrollView(
                      controller: scrollController,
                        child:ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constrains.minHeight,
                            ),
                            child:IntrinsicHeight(
                               // child:showLoading ? SizedBox(width:screenWidth,height:screenHeight,child: FadeTransition(opacity: _animation,child: Loading(),),):
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.stretch,
                               children:<Widget> [
                                 Flexible(child: mobileView(),),
                                 Flexible(child:  Column(
                                   children: [
                                     SizedBox(
                                       height:screenWidth < 321 ? 700 : 600,
                                       child: Image.asset("assets/4.jpg", height: screenWidth < 321 ? 700 : 600,  width: screenWidth < 321 ? 700 : 500),),
                                     Container(
                                       margin: const EdgeInsets.only(top: 50),
                                       child: const Text("About My Story",style: TextStyle(
                                         fontFamily: "DMSerifText",
                                         fontWeight: FontWeight.bold,
                                         fontSize: 30,
                                       ),),),
                                     Container(
                                       margin: const EdgeInsets.only(top: 50),
                                       height: screenWidth < 426 ? 450 : 300,
                                       width:screenWidth < 426 ? 300 : 600,
                                       child: Text("   I am Ayberk, I am from Turkey and I study Computer Science at Eastern Mediterranean University. Due to pandemic I had to suspend my studies. ,"
                                           "However, I deepend my knowledge on web development and cyber security. "
                                           "I am mostly a pesimistic person, and my cyninism is ever growing since I move to Cyprus. I wasn't a social person, so that's why I am better friends with machines than people. Mostly I prefer to be alone. "
                                         ,style: TextStyle(fontFamily: "Inter",fontSize: screenWidth < 426 ? 20 :25,letterSpacing: 1.2),),
                                     ),
                                     Container(
                                       height: screenWidth < 426 ? 450 : 300,
                                       width:screenWidth < 426 ? 300 : 600,
                                       margin: const EdgeInsets.only(top: 50),
                                       child: Text("   I enjoy Synthwave, Vaporwave, Futurefunk, Jazz and Japanese City Pop. Especially at night times I really like to cruise while listening to them. I enjoy melanchony of night and mellow moments of the afternoon. "
                                           "I enjoy video games, fantastic novels, mangas and crime-noir films.",style: TextStyle(fontFamily: "Inter",fontSize: screenWidth < 426 ? 20 :25,letterSpacing: 1.2),),
                                     )
                                   ],
                                 ),),
                               ],
                             ),

                            )
                        )
                    ),
                  )
                ],
              ),
            ]

        ));
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



class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

  late ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){
          scrollController.animateTo(0, duration: const Duration(seconds:2 ), curve:Curves.fastOutSlowIn);
        },
        child:const Icon(Icons.arrow_upward,color: Colors.white,),
      ),
        body:screenWidth < 769 ? const MobileViewAbout() : LayoutBuilder(
            builder: (context,constrains)=> SingleChildScrollView(
              controller: scrollController,
                child:ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constrains.minHeight,
                    ),
                    child:IntrinsicHeight(
                      // child:showLoading ? SizedBox(width:screenWidth,height:screenHeight,child: FadeTransition(opacity: _animation,child: Loading(),),) :
                      child:Column(
                        children:<Widget> [
                          Flexible(flex: screenWidth < 769 ? 2 :1,child:const Navigation(),),
                          Flexible(flex: screenWidth < 769 ? 1 : 4,child:  Column(
                            children: [
                              Image.asset("assets/4.jpg",width: screenWidth < 769 ? 500 : 1000,),
                              Container(
                                margin: const EdgeInsets.only(top: 50),
                                child: Text("About My Story",style: TextStyle(
                                    fontFamily: "DMSerifText",
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth < 769 ? 25 :45
                                ),),),
                              Container(
                                margin: const EdgeInsets.only(top: 50),
                                width: screenWidth < 769 ? 600 : 1000,
                                child: const Text("   I am Ayberk, I am from Turkey and I study Computer Science at Eastern Mediterranean University. Due to pandemic I had to suspend my studies. ,"
                                    "However, I deepend my knowledge on web development and cyber security. "
                                    "I am mostly a pesimistic person, and my cyninism is ever growing since I move to Cyprus. I wasn't a social person, so that's why I am better friends with machines than people. Mostly I prefer to be alone. "
                                    ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 50),
                                width: screenWidth < 769 ? 600 : 1000,
                                child: const Text("   I enjoy Synthwave, Vaporwave, Futurefunk, Jazz and Japanese City Pop. Especially at night times I really like to cruise while listening to them. I enjoy melanchony of night and mellow moments of the afternoon. "
                                    "I enjoy video games, fantastic novels, mangas and crime-noir films.",style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                              )
                            ],
                          ),),
                          const Flexible(flex: 1,child: FooterDesktop(),)
                          // Flexible(child: Footer(),flex:screenWidth < 321 ? 5 : screenWidth < 769 ? 4 : 2)
                        ],
                      ),

                    )
                )
            ),
          ),
    );
  }
}

