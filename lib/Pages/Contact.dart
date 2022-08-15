import 'package:blog/utils/content_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';
import 'package:blog/utils/Navigation.dart';
import 'package:blog/utils/footer.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:url_launcher/url_launcher.dart';


class MobileViewContact extends StatefulWidget {
  const MobileViewContact({Key? key}) : super(key: key);

  @override
  _MobileViewContactState createState() {
    return _MobileViewContactState();
  }
}

class _MobileViewContactState extends State<MobileViewContact> with TickerProviderStateMixin {
  late double screenWidth;
  late double screenHeight;
  late ScrollController scrollController = ScrollController();
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: (){
            scrollController.animateTo(0, duration: const Duration(seconds:2 ), curve:Curves.fastOutSlowIn);
          },
          child:const Icon(Icons.arrow_upward,color: Colors.white,),
        ),
        key:scaffoldKey,
        body: FooterView(
            footer: Footer(
                child:Column(
                  children: const [
                    Text('Copyright ©2022, All Rights Reserved.',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0, color: Color(0xFF162A49)),),
                    Text('Ülkü Ayberk Yiğit',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,color: Color(0xFF162A49)),),
                  ],
                )
            ),
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  LayoutBuilder(
                    builder: (context,constrains)=> SingleChildScrollView(
                      controller: scrollController,
                        child:ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constrains.minHeight,
                            ),
                            child:IntrinsicHeight(
                               // child:showLoading ? SizedBox(width:screenWidth,height:screenHeight,child: FadeTransition(opacity: _animation,child: Loading(),),):
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children:<Widget> [
                                  Flexible(child: mobileView(),),
                                  Flexible(child:  Column(
                                    children: [
                                      SizedBox(
                                        height:screenWidth < 321 ? 700 : 600,
                                        child: Image.asset("assets/5.jpg", height: screenWidth < 321 ? 700 : 600,  width: screenWidth < 321 ? 700 : 500),),
                                      Container(
                                        margin: const EdgeInsets.only(top: 50),
                                        child: const Text("Contact",style: TextStyle(
                                          fontFamily: "DMSerifText",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                        ),),),
                                      Container(
                                        margin: const EdgeInsets.only(top: 50),
                                        height: screenWidth < 426 ? 450 : 300,
                                        width:screenWidth < 426 ? 300 : 600,
                                        child: const Text("   I am mostly available and easy to make contact. "
                                            "I can reply to messages or Emails in at most 2 days. "
                                            "However, I will probably answer on the phone the fastest."
                                          ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                                      ),
                                      screenWidth < 376 ? Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                              children:[
                                                const Text("Contact Info",style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "DMSerifText",
                                                    fontSize: 20
                                                ),),
                                                RichText(text:TextSpan(
                                                    text: "Mobile Phone: +90 (533) 840 28 02",
                                                    style: const TextStyle(fontFamily: "Inter",fontSize: 15),
                                                    recognizer: TapGestureRecognizer()..onTap = ()async{
                                                      final Uri launchUri = Uri(
                                                          scheme: 'tel',
                                                          path:'+905338402802'
                                                      );
                                                      if( await canLaunchUrl(launchUri)){
                                                        await launchUrl(launchUri);
                                                      }
                                                    }
                                                ) ),
                                                RichText(text: TextSpan(
                                                    text: "Email Address: kurtknispel9@gmail.com",
                                                    style: const TextStyle(fontFamily: "Inter",fontSize: 15),
                                                    recognizer: TapGestureRecognizer()..onTap = ()async{
                                                      String email = 'kurtknispel9@gmail.com';
                                                      String subject = 'Hello';
                                                      String body = 'Greetings I am ...';
                                                      String? encodeQueryParameters(Map<String, String> params){
                                                        return params.entries
                                                            .map((e)=> '${Uri
                                                            .encodeComponent(
                                                            e.key)}=${Uri.encodeComponent(e.value)}')
                                                            .join('&');
                                                      }
                                                      final Uri emailUri = Uri(
                                                          scheme: "mailto",
                                                          path:email,
                                                          query: encodeQueryParameters(
                                                            <String,String>{
                                                              'subject': subject,
                                                              'body':body
                                                            },
                                                          )
                                                      );
                                                      if(await canLaunchUrl(emailUri)){
                                                        launchUrl(emailUri);
                                                      }
                                                    }
                                                ))
                                              ]
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(top:20),
                                            child: Column(
                                              children: [
                                                const Text("Social Accounts",style: TextStyle(fontFamily: "DMSerifText",fontWeight: FontWeight.bold,fontSize: 20),),
                                                RichText(
                                                  text:TextSpan(
                                                    text:"GitHub",
                                                    style:const TextStyle(fontFamily: "Inter",
                                                        letterSpacing: 0.5,
                                                        height: 1.5,fontSize: 15),
                                                    recognizer: TapGestureRecognizer()..onTap = ()async{
                                                      final Uri url=Uri.parse('https://github.com/pnzrkmpfwgn');
                                                      if(await canLaunchUrl(url)){
                                                        launchUrl(url);
                                                      }
                                                    },
                                                    children:[
                                                      TextSpan(text:"\nLinkedin",
                                                          recognizer:TapGestureRecognizer()..onTap = ()async{
                                                            final Uri url=Uri.parse('https://www.linkedin.com/in/ülkü-ayberk-yiğit-1b54b01b3/');
                                                            if(await canLaunchUrl(url)){
                                                              launchUrl(url);
                                                            }
                                                          }
                                                      )
                                                    ],
                                                  ),

                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ) : Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                              children:[
                                                const Text("Contact Info",style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "DMSerifText",
                                                    fontSize: 20
                                                ),),
                                                RichText(text:TextSpan(
                                                  text: "Mobile Phone: +90 (533) 840 28 02",
                                                  style: const TextStyle(fontFamily: "Inter",fontSize: 15),
                                                  recognizer: TapGestureRecognizer()..onTap = ()async{
                                                    final Uri launchUri = Uri(
                                                      scheme: 'tel',
                                                      path:'+905338402802'
                                                    );
                                                    if( await canLaunchUrl(launchUri)){
                                                      await launchUrl(launchUri);
                                                    }
                                                  }
                                                ) ),
                                                RichText(text: TextSpan(
                                                  text: "Email Address: kurtknispel9@gmail.com",
                                                  style: const TextStyle(fontFamily: "Inter",fontSize: 15),
                                                    recognizer: TapGestureRecognizer()..onTap = ()async{
                                                    String email = 'kurtknispel9@gmail.com';
                                                    String subject = 'Hello';
                                                    String body = 'Greetings I am ...';
                                                      String? encodeQueryParameters(Map<String, String> params){
                                                        return params.entries
                                                            .map((e)=> '${Uri
                                                            .encodeComponent(
                                                            e.key)}=${Uri.encodeComponent(e.value)}')
                                                            .join('&');
                                                      }
                                                      final Uri emailUri = Uri(
                                                        scheme: "mailto",
                                                        path:email,
                                                        query: encodeQueryParameters(
                                                          <String,String>{
                                                            'subject': subject,
                                                            'body':body
                                                          },
                                                        )
                                                      );
                                                      if(await canLaunchUrl(emailUri)){
                                                        launchUrl(emailUri);
                                                      }
                                                    }
                                                ))
                                              ]
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(top:20),
                                            child: Column(
                                              children: [
                                                const Text("Social Accounts",style: TextStyle(fontFamily: "DMSerifText",fontWeight: FontWeight.bold,fontSize: 20),),
                                                RichText(
                                                  text:TextSpan(
                                                    text:"GitHub",
                                                    style:const TextStyle(fontFamily: "Inter",
                                                        letterSpacing: 0.5,
                                                        height: 1.5,fontSize: 15),
                                                    recognizer: TapGestureRecognizer()..onTap = ()async{
                                                      final Uri url=Uri.parse('https://github.com/pnzrkmpfwgn');
                                                      if(await canLaunchUrl(url)){
                                                        launchUrl(url);
                                                      }
                                                    },
                                                    children:[
                                                      TextSpan(text:"\nLinkedin",
                                                          recognizer:TapGestureRecognizer()..onTap = ()async{
                                                            final Uri url=Uri.parse('https://www.linkedin.com/in/ülkü-ayberk-yiğit-1b54b01b3/');
                                                            if(await canLaunchUrl(url)){
                                                              launchUrl(url);
                                                            }
                                                          }
                                                      )
                                                    ],
                                                  ),

                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )

                                    ],
                                  ),),
                                ],
                              ),

                            )
                        )
                    ),
                  )
                ],
              ),
            ]

        ));
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

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

  late ScrollController scrollController = ScrollController();


  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child:const Icon(Icons.arrow_upward,color: Colors.white,),
          onPressed:(){
            scrollController.animateTo(0, duration: const Duration(seconds:2 ), curve:Curves.fastOutSlowIn);
          }
      ),
      backgroundColor: Colors.white,
      body:screenWidth < 769 ? const MobileViewContact() : LayoutBuilder(
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
                      Flexible(flex: screenWidth < 769 ? 2 :1,child:const Navigation(),),
                      Flexible(flex: screenWidth < 769 ? 1 : 4,child:  Column(
                        children: [
                          Image.asset("assets/5.jpg",width: screenWidth < 769 ? 500 : 1000,),
                          Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: Text("Contact",style: TextStyle(
                                fontFamily: "DMSerifText",
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth < 769 ? 25 :45
                            ),),),
                          Container(
                            margin: const EdgeInsets.only(top: 50),
                            width: screenWidth < 769 ? 600 : 1000,
                            child: const Text("   I am mostly available and easy to make contact. "
                                "I can reply to messages or Emails in at most 2 days. "
                                "However, I will probably answer on the phone the fastest."
                              ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children:const [
                                  Text("Contact Info",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "DMSerifText",
                                  fontSize: 20
                                ),),
                                  Text("Mobile Phone: +90 (533) 840 28 02",
                                  style:TextStyle(fontFamily: "Inter",fontSize: 15)
                                  ),
                                  Text("Email Address: kurtknispel9@gmail.com",
                                  style: TextStyle(fontFamily: "Inter",fontSize: 15),
                                  )
                            ]
                              ),
                              Container(
                                margin: const EdgeInsets.only(top:20),
                                child: Column(
                                  children: [
                                    const Text("Social Accounts",style: TextStyle(fontFamily: "DMSerifText",fontWeight: FontWeight.bold,fontSize: 20),),
                                    RichText(
                                      text:TextSpan(
                                        text:"GitHub",
                                        style:const TextStyle(fontFamily: "Inter",
                                            letterSpacing: 0.5,
                                            height: 1.5,fontSize: 15),
                                        recognizer: TapGestureRecognizer()..onTap = ()async{
                                          final Uri url=Uri.parse('https://github.com/pnzrkmpfwgn');
                                          if(await canLaunchUrl(url)){
                                            launchUrl(url);
                                          }
                                        },
                                        children:[
                                          TextSpan(text:"\nLinkedin",
                                              recognizer:TapGestureRecognizer()..onTap = ()async{
                                                final Uri url=Uri.parse('https://www.linkedin.com/in/ülkü-ayberk-yiğit-1b54b01b3/');
                                                if(await canLaunchUrl(url)){
                                                  launchUrl(url);
                                                }
                                              }
                                          )
                                        ],
                                      ),

                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),),
                      const Flexible(flex: 1,child: FooterDesktop(),)
                      // Flexible(child: Footer(),flex:screenWidth < 321 ? 5 : screenWidth < 769 ? 4 : 2)
                    ],
                  ),

                )
            )
        ),
      ),
    );
  }
}

