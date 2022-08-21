import 'package:blog/utils/content_view.dart';
import 'package:flutter/material.dart';
import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';
import 'package:blog/utils/Navigation.dart';



class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

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
                      Flexible(flex: 4,child: screenWidth > 768 ? const Navigation() : mobileView(),),
                      const Flexible(child: Text("Philosophy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "DMSerifText"),),),
                      Flexible(child: Column(
                        children: [
                          TextButton(child:const Text("The Number 42",style: TextStyle(color:Colors.black),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/post1");
                          },),
                          TextButton(child:const Text("Shameless Virtue",style: TextStyle(color:Colors.black),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/post4");
                          }),
                          TextButton(child:const Text("Eight Spiders",style: TextStyle(color:Colors.black),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/post7");
                          }),
                        ],)),
                      const Flexible(child: Text("Music",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "DMSerifText"),),),
                      Flexible(child: Column(
                        children: [
                          TextButton(child:const Text("The Goddess Of City Pop",style: TextStyle(color:Colors.black),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/post2");
                          },),
                          TextButton(child:const Text("VaporWave",style: TextStyle(color:Colors.black),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/post5");
                          }),
                        ],)),
                      const Flexible(child: Text("Technology",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "DMSerifText"),),),
                      Flexible(child: Column(
                        children: [
                          TextButton(child:const Text("Roko's Basilisk",style: TextStyle(color:Colors.black),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/post3");
                          },),
                          TextButton(child:const Text("Dyson Sphere",style: TextStyle(color:Colors.black),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/post6");
                          }),
                          TextButton(child:const Text("The Antikythera Mechanism",style: TextStyle(color:Colors.black),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/post8");
                          }),
                        ],))
                    ],
                  ),

                )
            )
        ),
      ),
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

