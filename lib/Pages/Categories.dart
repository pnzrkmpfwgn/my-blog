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

class _CategoriesState extends State<Categories> {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

  List<ContentView> contentViews =[
    ContentView(tab: CustomTab(title:"Home"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: CustomTab(title:"Categories"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: CustomTab(title:"Blog"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: CustomTab(title:"Styles"), content: Center(
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
        endDrawer: drawer(),
        key: scaffoldKey,
        body:Stack(
          children:[
            Positioned(
                width: MediaQuery.of(context).size.width,
                height: 200,
                top:0,
                left:0,
                child: screenWidth > 768 ? Navigation() : mobileView()
            ),
            Positioned(
                width: MediaQuery.of(context).size.width,
                height: 300,
                top:300,
                left:0,
                child: Text("Categories"))
          ],
        )
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

