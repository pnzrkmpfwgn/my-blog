import 'package:blog/utils/content_view.dart';
import 'package:flutter/material.dart';
import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';
import 'package:blog/utils/Navigation.dart';



class MobileViewPost7 extends StatefulWidget {
  const MobileViewPost7({Key? key}) : super(key: key);

  @override
  _MobileViewPost7State createState() {
    return _MobileViewPost7State();
  }
}

class _MobileViewPost7State extends State<MobileViewPost7> with TickerProviderStateMixin {
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

                        child: Image.asset("assets/11.jpg"),),),
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
                                    child: Text("Eight Spiders",style: TextStyle(
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
                                        "   The belief that we swallow an average of eight spiders in our sleep every year has become so ingrained in popular culture that many people now accept it as fact. The reality, however, is quite different: we swallow no spiders at all.\n\n"
                                    "There are several reasons why spiders don’t bother us in our sleep. Foremost, we’re extremely large compared with spiders, so they tend to view us merely as part of their landscape. Equally important, a wandering spider would find a sleeping human absolutely terrifying because, as we slumber, we tend to make a lot of noise via our heartbeat and breathing. These sounds create vibrations to which spiders are extremely sensitive. As a result, they likely would do all they could to avoid us.\n\n"
                                    "Experts acknowledge that it’s possible that a spider could find its way into your mouth while you’re sleeping, but the chances are so slim as to be negligible. If a spider were to climb onto your face while you slept, the sensation of eight tiny legs on your skin could wake you up very quickly.\n\n"
                                    "The “fact” that we swallow eight spiders a year in our sleep likely originated in a 1993 magazine article about how readily people accept as fact information they read online, no matter how ridiculous it seems. The author noted the fictional statistic about spiders as an outlandish example, only to watch it quickly spread as fact across the Internet.\n\n"
                                    "Only a small number of spider species share our homes with us, and the majority of them prefer seclusion. They live in webs in quiet corners or inhabit areas where humans spend little time, such as basements and attics. Unless a spider in your home poses an inconvenience or you suffer from severe arachnophobia, entomologists encourage you to leave it alone. Spiders can be quite beneficial because they eat a lot of smaller pests that can make our lives miserable.\n\n"
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
                                          Navigator.pushReplacementNamed(context, "/post8");
                                        }, child: const Text("Next>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                        const Text("---",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),),
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/post6");
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

class Post7 extends StatefulWidget {
  const Post7({Key? key}) : super(key: key);

  @override
  State<Post7> createState() => _Post7State();
}

class _Post7State extends State<Post7> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;


  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:screenWidth < 1025 ? const MobileViewPost7() : LayoutBuilder(
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
                      Flexible(child:Image.asset("assets/11.jpg",width: screenWidth < 769 ? 500 : 1000,),),
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
                                    child: Text("Eight Spiders",style: TextStyle(
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
                                    child: const Text(    "   The belief that we swallow an average of eight spiders in our sleep every year has become so ingrained in popular culture that many people now accept it as fact. The reality, however, is quite different: we swallow no spiders at all.\n\n"
                                        "There are several reasons why spiders don’t bother us in our sleep. Foremost, we’re extremely large compared with spiders, so they tend to view us merely as part of their landscape. Equally important, a wandering spider would find a sleeping human absolutely terrifying because, as we slumber, we tend to make a lot of noise via our heartbeat and breathing. These sounds create vibrations to which spiders are extremely sensitive. As a result, they likely would do all they could to avoid us.\n\n"
                                        "Experts acknowledge that it’s possible that a spider could find its way into your mouth while you’re sleeping, but the chances are so slim as to be negligible. If a spider were to climb onto your face while you slept, the sensation of eight tiny legs on your skin could wake you up very quickly.\n\n"
                                        "The “fact” that we swallow eight spiders a year in our sleep likely originated in a 1993 magazine article about how readily people accept as fact information they read online, no matter how ridiculous it seems. The author noted the fictional statistic about spiders as an outlandish example, only to watch it quickly spread as fact across the Internet.\n\n"
                                        "Only a small number of spider species share our homes with us, and the majority of them prefer seclusion. They live in webs in quiet corners or inhabit areas where humans spend little time, such as basements and attics. Unless a spider in your home poses an inconvenience or you suffer from severe arachnophobia, entomologists encourage you to leave it alone. Spiders can be quite beneficial because they eat a lot of smaller pests that can make our lives miserable.\n\n"
                                      ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/post8");
                                    }, child: const Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/post6");
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

