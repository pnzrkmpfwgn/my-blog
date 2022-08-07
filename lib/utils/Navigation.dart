import 'package:flutter/material.dart';
import 'package:blog/utils/search.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  late double screenWidth;
  late double screenHeight;

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
      backgroundColor: Colors.white,
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

}

