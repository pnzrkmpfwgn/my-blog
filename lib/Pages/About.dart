import 'package:blog/utils/content_view.dart';
import 'package:flutter/material.dart';
import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';
import 'package:blog/utils/Navigation.dart';
import 'package:blog/Pages/Loading.dart';
import 'package:blog/utils/footer.dart';


class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;
  late bool showLoading=true;

  late AnimationController _animationController;
  late AnimationController _animationController2;
  late Animation<double> _animation;

  void initState(){
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds:1000),
    );
    _animationController2 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _animationController2, curve: Curves.easeIn);
    Future.delayed(Duration(seconds:5),
            (){
          setState((){
            showLoading = false;
          });
        });
    super.initState();
  }

  @override
  void dispose(){
    _animationController.dispose();
    _animationController2.dispose();
    super.dispose();
  }

  List<ContentView> contentViews =[
    ContentView(tab: CustomTab(title:"Home"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: CustomTab(title:"Categories"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: CustomTab(title:"About"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: CustomTab(title:"Contact"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        endDrawer: drawer(),
        key: scaffoldKey,
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
                          Flexible(child: screenWidth > 768 ? Container( child: Navigation(),) : mobileView(),flex: screenWidth < 769 ? 2 :1,),
                          Flexible(child:  Column(
                            children: [
                              Container(
                                child: Image.asset("assets/4.jpg",width: screenWidth < 769 ? 500 : 1000,),),
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                child: Text("About My Story",style: TextStyle(
                                    fontFamily: "DMSerifText",
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth < 769 ? 25 :45
                                ),),),
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                width: screenWidth < 769 ? 600 : 1000,
                                child: Text("   I am Ayberk, I am from Turkey and I study Computer Science at Eastern Mediterranean University. Due to pandemic I had to suspend my studies. ,"
                                    "However, I deepend my knowledge on web development and cyber security. "
                                    "I am mostly a pesimistic person, and my cyninism is ever growing since I move to Cyprus. I wasn't a social person, so that's why I am better friends with machines than people. Mostly I prefer to be alone. "
                                    ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                width: screenWidth < 769 ? 600 : 1000,
                                child: Text("   I enjoy Synthwave, Vaporwave, Futurefunk, Jazz and Japanese City Pop. Especially at night times I really like to cruise while listening to them. I enjoy melanchony of night and mellow moments of the afternoon. "
                                    "I enjoy video games, fantastic novels, mangas and crime-noir films.",style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                              )
                            ],
                          ),flex: screenWidth < 769 ? 1 : 4,),
                          Flexible(child: Container( child: Footer(),),flex: 1,)
                          // Flexible(child: Footer(),flex:screenWidth < 321 ? 5 : screenWidth < 769 ? 4 : 2)
                        ],
                      ),

                    )
                )
            ),
          ),
    );
  }

  Widget mobileView(){
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
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Logo.png',),
                      fit:BoxFit.fill
                  )
              ),
            ),
            Row(
              children: [IconButton(onPressed: () => scaffoldKey.currentState?.openEndDrawer(),
                iconSize: screenWidth*0.08, icon: Icon(Icons.menu_rounded),
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
              Navigator.pushReplacementNamed(context, "/" + e.tab.title.toLowerCase());
            }),
          )).toList()
      ),
    );
  }
}

