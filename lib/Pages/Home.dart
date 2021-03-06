import 'package:blog/utils/content_view.dart';
import 'package:blog/utils/gridtext.dart';
import 'package:flutter/material.dart';
import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';
import 'package:blog/utils/Navigation.dart';
import 'package:blog/utils/carousel.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

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

    final List _items = List.generate(12, (index) {
      return "Item $index";
    });

    return Scaffold(
      endDrawer: drawer(),
        key: scaffoldKey,
        body:LayoutBuilder(
          builder: (context,constrains)=> SingleChildScrollView(
            child:ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constrains.minHeight,
              ),
              child:IntrinsicHeight(
                child: Column(
                children:<Widget> [
                  Flexible(child: screenWidth > 768 ? Navigation() : mobileView(),flex: 1,fit:FlexFit.tight,),
                  Flexible(child: screenWidth > 1440 ? Carousel() : mobileCarousel(),flex: screenWidth >= 1440 ? 7 :6,fit:FlexFit.tight),
                  Flexible(child:Container(margin:EdgeInsets.only(top:50,right: 100,left:100,bottom:50),child:GridText(),),flex:10 ),
                ],
                ),

              )
              //   Stack(
              //   children:[
              //     Positioned(
              //         width: MediaQuery.of(context).size.width,
              //         height: 200,
              //         top:0,
              //         left:0,
              //         child: screenWidth > 768 ? Navigation() : mobileView()
              //     ),
              //     Positioned(
              //         width: screenWidth,
              //         height: screenHeight,
              //         top:150,
              //         left:0,
              //         child: screenWidth <= 1440 ? mobileCarousel() : Carousel()),
              //   ],
              // ),
            )
          ),
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

//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Container(
//   //     child: Navigation(),
//   //   );
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Stack(
//         children:[
//           Positioned(
//             width: MediaQuery.of(context).size.width,
//             height: 200,
//               top:0,
//               left:0,
//               child: Navigation())
//         ],
//       )
//     );
//   }
// }
