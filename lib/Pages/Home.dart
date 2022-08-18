import 'package:blog/utils/content_view.dart';
import 'package:blog/utils/gridtext.dart';
import 'package:flutter/material.dart';
import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';
import 'package:blog/utils/Navigation.dart';
import 'package:blog/utils/carousel.dart';
import 'package:blog/utils/footer.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;
  late ScrollController scrollController = ScrollController();

  late AnimationController _animationController;

  @override
  void initState(){
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds:1000),
    );

    super.initState();
  }

  @override
  void dispose(){
    _animationController.dispose();
    super.dispose();
  }

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
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    var scrollAmount=0.0;

    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: drawer(),
        key: scaffoldKey,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child:const Icon(Icons.arrow_upward,color: Colors.white,),
          onPressed:(){
              scrollController.animateTo(0, duration: const Duration(seconds:2 ), curve:Curves.fastOutSlowIn);
          }
        ),
        body:NotificationListener(
          onNotification: (ScrollNotification notification){
            scrollAmount = notification.metrics.pixels;
            if(scrollAmount > 600){
              _animationController.forward();
            }
            return true;
          },
          child: LayoutBuilder(
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
                        Flexible(flex: 1,fit:FlexFit.tight,child: screenWidth > 768 ? const Navigation() : mobileView(),),
                        Flexible(flex: screenWidth >= 1440 ? 7 :5,fit:FlexFit.tight, child: screenWidth > 1440 ?  Carousel() : mobileCarousel()),
                        Flexible(flex:screenWidth >=1440  ? 12 : screenWidth < 1025 ?  6 : 23, child:FadeTransition(opacity: _animationController, child: Container(margin:EdgeInsets.only(top:screenWidth < 426 ? 75 : 150,right:screenWidth < 426 ? 50 : 100,left: screenWidth < 426 ? 50 : 100,bottom: screenWidth < 426 ? 25 : 50),child:GridText(),),) ),
                        Flexible(flex:screenWidth < 321 ? 5 : screenWidth < 769 ? 5 : 2, child: const FooterDesktop())
                      ],
                    ),

                  )
              )
          ),
        ),)
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
