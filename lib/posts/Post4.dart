import 'package:blog/utils/content_view.dart';
import 'package:flutter/material.dart';
import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';
import 'package:blog/utils/Navigation.dart';



class MobileViewPost4 extends StatefulWidget {
  const MobileViewPost4({Key? key}) : super(key: key);

  @override
  _MobileViewPost4State createState() {
    return _MobileViewPost4State();
  }
}

class _MobileViewPost4State extends State<MobileViewPost4> with TickerProviderStateMixin {
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

                        child: Image.asset("assets/8.jpg"),),),
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
                                    child: Text("Shameless Virtue",style: TextStyle(
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
                                      "   It comes to a point when you wonder 'If nearly every people you see on social media are perfectly good and virtuos people why aren't we living in a Utopia yet?'. Pretty good question with a painfully easy answer. Because people tend to show their 'good' side on the internet. However, some people started to realize that people are getting even worse, despite getting 'better' or more 'virtuous' nowadays.\n\n"
                                          "That's called virtue signalling. It's been done by celebreties, politicians, Mega Corps. and ordinary people.  They signal their 'virtue' show themself as good people and act entitled while doing so. You can even see this kind of behavior in commericials. You can see the smugness in their faces, being full with themself and self rightousness. You can often see them belittleling other people and their choices. Despite the fact that they never act according to their ideology they often tell other people how to act. You can see posts or even 'tweets'.However, you can find even worse examples such as; Leonardo Di Caprio, in spite of him positioning himself as envoiremental activist and makes speeches about being conservative about our carbon footprint,  it's revelead he literally flew with his private jet to take his envoirementalist award, 8000 miles in fact, it's a little ironic that you don't give a shit about things you preach. Another example, Ellen degeneres or degenerate or what ever. Despite showing herself as an angel on the TV. It's revealed she was like a nazi officer against her employees. I mean you can't even look at her in the eye because she gets angry. There are even rumors about racism and even sexual assaults or even physical assaults. To be honest, she wasn't a great person even before this alligations come to surface as she literally made a pregnant woman drink alcohol on a live show.\n\n"
                                          "As of now, because of websites like Twitter people started to monologue rather than have any dialogue or conversations with each others like a civiliced normal people. They just can't stand any other opionion if it's not theirs but the stupid part is that they don't even live their ideologies they just tell other people to do it without accepting any critisicm or any counter point for some reason. If you happen to take a sensable approach to anything they preach they will label you with anything that ends with -ist like racist, sexist etc. One of the word they like to use is 'nazi'. It's just too ironic that I start  to think that I live in a purgotory where I am punished with such stuff. Labeling other people with some words, blaming bad things happening on some group of people then labeling them or signalling virtue is a literal nazi practice. You see Hitler was a vegan, anti-smoker, anti-alcohol all around good guy but he kinda enjoyed commiting genocides and found entitlement to do so. He blamed Jews for bad things happening. He probably brushed his teeth and drank orange juice then blamed the Jews for it. He liked to signal virtue, belittle people he called 'untermenchen', blamed groups of people and silenced other people who are criticizing him by labeling them 'untermenchen' and claimed that those people who made sense wanted bad things to happen to Germany. In conclusion don't be vegan.\n\n"
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
                                          Navigator.pushReplacementNamed(context, "/post5");
                                        }, child: const Text("Next>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                        const Text("---",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),),
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/post3");
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



class Post4 extends StatefulWidget {
  const Post4({Key? key}) : super(key: key);

  @override
  State<Post4> createState() => _Post4State();
}

class _Post4State extends State<Post4> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:screenWidth < 1025 ? const MobileViewPost4() : LayoutBuilder(
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
                      Flexible(child:Image.asset("assets/8.jpg",width: screenWidth < 769 ? 500 : 1000,),),
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
                                    child: Text("Shameless Virtue",style: TextStyle(
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
                                    child: const Text("   It comes to a point when you wonder 'If nearly every people you see on social media are perfectly good and virtuos people why aren't we living in a Utopia yet?'. Pretty good question with a painfully easy answer. Because people tend to show their 'good' side on the internet. However, some people started to realize that people are getting even worse, despite getting 'better' or more 'virtuous' nowadays.\n\n"
                                    "That's called virtue signalling. It's been done by celebreties, politicians, Mega Corps. and ordinary people.  They signal their 'virtue' show themself as good people and act entitled while doing so. You can even see this kind of behavior in commericials. You can see the smugness in their faces, being full with themself and self rightousness. You can often see them belittleling other people and their choices. Despite the fact that they never act according to their ideology they often tell other people how to act. You can see posts or even 'tweets'.However, you can find even worse examples such as; Leonardo Di Caprio, in spite of him positioning himself as envoiremental activist and makes speeches about being conservative about our carbon footprint,  it's revelead he literally flew with his private jet to take his envoirementalist award, 8000 miles in fact, it's a little ironic that you don't give a shit about things you preach. Another example, Ellen degeneres or degenerate or what ever. Despite showing herself as an angel on the TV. It's revealed she was like a nazi officer against her employees. I mean you can't even look at her in the eye because she gets angry. There are even rumors about racism and even sexual assaults or even physical assaults. To be honest, she wasn't a great person even before this alligations come to surface as she literally made a pregnant woman drink alcohol on a live show.\n\n"
                                    "As of now, because of websites like Twitter people started to monologue rather than have any dialogue or conversations with each others like a civiliced normal people. They just can't stand any other opionion if it's not theirs but the stupid part is that they don't even live their ideologies they just tell other people to do it without accepting any critisicm or any counter point for some reason. If you happen to take a sensable approach to anything they preach they will label you with anything that ends with -ist like racist, sexist etc. One of the word they like to use is 'nazi'. It's just too ironic that I start  to think that I live in a purgotory where I am punished with such stuff. Labeling other people with some words, blaming bad things happening on some group of people then labeling them or signalling virtue is a literal nazi practice. You see Hitler was a vegan, anti-smoker, anti-alcohol all around good guy but he kinda enjoyed commiting genocides and found entitlement to do so. He blamed Jews for bad things happening. He probably brushed his teeth and drank orange juice then blamed the Jews for it. He liked to signal virtue, belittle people he called 'untermenchen', blamed groups of people and silenced other people who are criticizing him by labeling them 'untermenchen' and claimed that those people who made sense wanted bad things to happen to Germany. In conclusion don't be vegan.\n\n"
                                      ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/post5");
                                    }, child: const Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/post3");
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

