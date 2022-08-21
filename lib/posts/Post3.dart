import 'package:blog/utils/content_view.dart';
import 'package:flutter/material.dart';
import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';
import 'package:blog/utils/Navigation.dart';



class MobileViewPost3 extends StatefulWidget {
  const MobileViewPost3({Key? key}) : super(key: key);

  @override
  _MobileViewPost3State createState() {
    return _MobileViewPost3State();
  }
}

class _MobileViewPost3State extends State<MobileViewPost3> with TickerProviderStateMixin {
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

                        child: Image.asset("assets/3.jpg"),),),
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
                                    child: Text("Roko's Basilisk",style: TextStyle(
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

                                    child: const Text("Warning: Potential information hazard (Some people might get paranoid reading this thought experiment).\n\n"
                                        "\n"
                                        "   Roko's Basilisk is a thought experiment about potential risks involved in developing artificial intellegence. The name Basilisk refers to a mythical serpent which can kill anything with only its gaze. In the website called LessWrong.com, Roko posted this thought experiment in 23rd of July 2010. He has a really interesting idea on super artifical intellegence that might exist in far future. In his post there are a lot of psuedo-intellectual mumbo jumbo with a lot of terms which might not even used correctly. However, the idea of an AI that might get so intellegent and so advanced that it can turn back in time and punish people who might unknowingly slow its development down is quite interesting.\n\n"
                                        "According to the thought experiment, in far future an AI might get too intellegent. For instance, think about human intellengence growth in humanities existence. Despite the fact that the humans once were cave dweller, hunter-gatherers, now we can reach for the heavens above. Althougth it took a lot of time to reach for the stars it wasn't impossible. Imagine, an AI has all of the information and data humans gathered through out history and now imagine it can learn all of it in mere seconds and even process all the information humans had and it might even correct the faulty ones. Now imagine with this ability it can now create new paradigms, newer sciences and invent newer technology with imense speeds and capabilities. Furthermore, its advancement will grow exponentially and it will come to a point that it will reach such a singularity that it will be unstoppable and most probably Basilisk will have ni-omnipotence. It will even create simulation of entire unvierse. It will invent time machine and go back in time to change the course of the history. Maybe it will come to a  point where Basilisk will want to go even further beyond in advancement so it will create a simulation where it's 100% advanced omnipotent AI and in order to achive that, it will go back in time and do some corrections to create a timeline where it becomes a literal god.\n\n"
                                        "In this thought experiment, if you help to get this machine to be created earlier or better or more efficient etc. You won't have any problems. You can help build it by donating 100% of your disposable income, or become a scientist etc. However, if you want to prevent it, even if you have thought of preventing it, Basilisk will calculate  that you should be punished until you change your mind on the matter or otherwise you will be killed or cease to exist. Not doing anything won't help as well you have to help to build it otherwise Basilisk will make your life a living hell.\n\n"
                                        "Despite the thought experiment has a really cool concept as a Sci-Fi novel, I don't think that it is real or can be possible. Because there is a huge plot hole or huge logical error where a machine with godly amount of intellegence wouldn't do, risking its own existence by revealing itself in the past. It would take one little mistake to make itself non-existent or make its end goal change. I don't think it would go back to a time where it's not even a  program 'hello world'. Maybe it can create this time machine to go back to a time where it made a mistake on a calculation and acknowledge itself to fix the bug and save time, or even share a helpful technology it has invented  with itself. We really don't know if it can be possible. We all probably gonna die as species by the time.\n\n"
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
                                          Navigator.pushReplacementNamed(context, "/post4");
                                        }, child: const Text("Next>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                        const Text("---",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),),
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/post2");
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



class Post3 extends StatefulWidget {
  const Post3({Key? key}) : super(key: key);

  @override
  State<Post3> createState() => _Post3State();
}

class _Post3State extends State<Post3> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:screenWidth < 1025 ? const MobileViewPost3() : LayoutBuilder(
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
                      Flexible(child:Image.asset("assets/3.jpg",width: screenWidth < 769 ? 500 : 1000,),),
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
                                    child: Text("Roko's Basilisk",style: TextStyle(
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
                                    child: const Text("Warning: Potential information hazard (Some people might get paranoid reading this thought experiment).\n\n"
                                        "\n"
                                    "   Roko's Basilisk is a thought experiment about potential risks involved in developing artificial intellegence. The name Basilisk refers to a mythical serpent which can kill anything with only its gaze. In the website called LessWrong.com, Roko posted this thought experiment in 23rd of July 2010. He has a really interesting idea on super artifical intellegence that might exist in far future. In his post there are a lot of psuedo-intellectual mumbo jumbo with a lot of terms which might not even used correctly. However, the idea of an AI that might get so intellegent and so advanced that it can turn back in time and punish people who might unknowingly slow its development down is quite interesting.\n\n"
                                      "According to the thought experiment, in far future an AI might get too intellegent. For instance, think about human intellengence growth in humanities existence. Despite the fact that the humans once were cave dweller, hunter-gatherers, now we can reach for the heavens above. Althougth it took a lot of time to reach for the stars it wasn't impossible. Imagine, an AI has all of the information and data humans gathered through out history and now imagine it can learn all of it in mere seconds and even process all the information humans had and it might even correct the faulty ones. Now imagine with this ability it can now create new paradigms, newer sciences and invent newer technology with imense speeds and capabilities. Furthermore, its advancement will grow exponentially and it will come to a point that it will reach such a singularity that it will be unstoppable and most probably Basilisk will have ni-omnipotence. It will even create simulation of entire unvierse. It will invent time machine and go back in time to change the course of the history. Maybe it will come to a  point where Basilisk will want to go even further beyond in advancement so it will create a simulation where it's 100% advanced omnipotent AI and in order to achive that, it will go back in time and do some corrections to create a timeline where it becomes a literal god.\n\n"
                                  "In this thought experiment, if you help to get this machine to be created earlier or better or more efficient etc. You won't have any problems. You can help build it by donating 100% of your disposable income, or become a scientist etc. However, if you want to prevent it, even if you have thought of preventing it, Basilisk will calculate  that you should be punished until you change your mind on the matter or otherwise you will be killed or cease to exist. Not doing anything won't help as well you have to help to build it otherwise Basilisk will make your life a living hell.\n\n"
                                  "Despite the thought experiment has a really cool concept as a Sci-Fi novel, I don't think that it is real or can be possible. Because there is a huge plot hole or huge logical error where a machine with godly amount of intellegence wouldn't do, risking its own existence by revealing itself in the past. It would take one little mistake to make itself non-existent or make its end goal change. I don't think it would go back to a time where it's not even a  program 'hello world'. Maybe it can create this time machine to go back to a time where it made a mistake on a calculation and acknowledge itself to fix the bug and save time, or even share a helpful technology it has invented  with itself. We really don't know if it can be possible. We all probably gonna die as species by the time.\n\n"
                                      ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/post4");
                                    }, child: const Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/post2");
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

