// import 'package:blog/utils/content_view.dart';
import 'package:flutter/material.dart';
// import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  // var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

  // List<ContentView> contentViews =[
  //   ContentView(tab: CustomTab(title:"Home"), content: Center(
  //     child: Container(color:Colors.black,width: 100,height:100,),
  //   )),
  //   ContentView(tab: CustomTab(title:"Categories"), content: Center(
  //     child: Container(color:Colors.black,width: 100,height:100,),
  //   )),
  //   ContentView(tab: CustomTab(title:"Blog"), content: Center(
  //     child: Container(color:Colors.black,width: 100,height:100,),
  //   )),
  //   ContentView(tab: CustomTab(title:"Styles"), content: Center(
  //     child: Container(color:Colors.black,width: 100,height:100,),
  //   )),
  //   ContentView(tab: CustomTab(title:"About"), content: Center(
  //     child: Container(color:Colors.black,width: 100,height:100,),
  //   )),
  //   ContentView(tab: CustomTab(title:"Contact"), content: Center(
  //     child: Container(color:Colors.black,width: 100,height:100,),
  //   )),
  // ];

  @override
  Widget build(BuildContext context) {

    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    Color color = Colors.white;

    Widget buttonSelection = Container(
        color:Colors.black,//.withOpacity(0.5),
        padding:EdgeInsets.only(left:20.0,right: 20.0) ,
        height:150.0 ,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                crossAxisAlignment:CrossAxisAlignment.center,
                children:[_buildButtonColumn(color,'Home',context),
              _buildButtonColumn(color,'Categories',context),
              _buildButtonColumn(color,'Blog',context),
              _buildButtonColumn(color,'Styles',context),
              _buildButtonColumn(color,'About',context),
              _buildButtonColumn(color,'Contact',context),]),
            IconButton(onPressed: (){
              showSearch(
                context: context,
                delegate:MySearchDelegate(),
              );
            }, icon:  Icon(Icons.search,color: Colors.white,size: 30,))
          ],
        )
    );

    return Scaffold(
      // endDrawer: drawer(),
      // key:scaffoldKey,
      body: Column(
        children: [
          LayoutBuilder(builder: (context,constrains){
              return buttonSelection;
          })

        ],
      ),
    );
  }

  Column _buildButtonColumn(Color color,String label, BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            margin: const EdgeInsets.only(top:8.0),
            child: TextButton(
              onPressed:(){
                  Navigator.pushReplacementNamed(context, "/" + label.toLowerCase());
              },

              child:Text(
                  label,
                  style:TextStyle(
                    fontSize:16,
                    fontWeight: FontWeight.w400,
                    color: color,
                  )
              ),
            )
        )
      ],
    );
  }
  // Widget mobileView(){
  //
  //   return Container(
  //         width: screenWidth,
  //         color: Colors.black,
  //         child:Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: [
  //             Container(
  //               width: 200,
  //               height: 150,
  //               decoration: BoxDecoration(
  //                   image: DecorationImage(
  //                       image: AssetImage('assets/Logo.png',),
  //                       fit:BoxFit.fill
  //                   )
  //               ),
  //             ),
  //             Row(
  //               children: [IconButton(onPressed: () => scaffoldKey.currentState?.openEndDrawer(),
  //                 iconSize: screenWidth*0.08, icon: Icon(Icons.menu_rounded),
  //                 color: Colors.white,),
  //                 IconButton(onPressed: (){
  //                   showSearch(
  //                     context: context,
  //                     delegate:MySearchDelegate(),
  //                   );
  //                 }, icon:  Icon(Icons.search,color: Colors.white,size: screenWidth*0.05,))],
  //             ),
  //
  //           ],
  //         )
  //     );
  //
  //
  // }
  //
  // Widget drawer(){
  //   return Drawer(
  //     child: ListView(
  //       children: [
  //         Container(height: screenHeight * 0.1,)
  //       ] + contentViews.map((e) => Container(
  //         child: ListTile(title:Text(e.tab.title),onTap:(){
  //           Navigator.pushReplacementNamed(context, "/" + e.tab.title.toLowerCase());
  //         }),
  //       )).toList()
  //     ),
  //   );
  // }
}

