import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top:50.0),
      color: Colors.grey[350],
      child: Column(
        children: [
          screenWidth < 769 ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width:250,
                    child:
                    Column(
                        children: [
                          Container(
                            child: Text(
                              "ABOUT THE SITE",
                              style: TextStyle(
                                  fontFamily: "DMSerifText",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top:20.0),
                            padding: EdgeInsets.only(top:20.0),
                              width: screenWidth <321 ? 200 : 300,
                            decoration: BoxDecoration(
                                border:Border(
                                    top: BorderSide(width: 0.3,color: Colors.black)
                                )
                            ),
                            child: Text("Lorem ipsum Ut velit dolor Ut labore id fugiat in ut fugiat nostrud qui in dolore commodo "
                                "eu magna Duis cillum dolor officia esse mollit In reprehenderit commodo aliqua irure."
                                " proident Excepteur exercitation nulla. Lorem ipsum. ",
                                style:TextStyle(fontFamily: "Inter",letterSpacing: 0.5,height: 1.5)
                            ),
                          )
                        ]
                    ),
                  ),
                  Container(
                    width:250,
                    child:
                    Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top:40.0),
                            child: Text(
                              "FOLLOW US",
                              style: TextStyle(
                                color: Colors.black,
                                  fontFamily: "DMSerifText",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top:20.0),
                            padding: EdgeInsets.only(top:20.0),
                            decoration: BoxDecoration(
                                border:Border(
                                    top: BorderSide(width: 0.3,color: Colors.black)
                                )
                            ),
                            child: RichText(
                              text:TextSpan(
                                text:"GitHub",
                                style:TextStyle(fontFamily: "Inter",
                                    letterSpacing: 0.5,
                                    height: 1.5),
                                recognizer: TapGestureRecognizer()..onTap = ()async{
                                  final Uri url=Uri.parse('https://github.com/pnzrkmpfwgn');
                                  if(await canLaunchUrl(url)){
                                    launchUrl(url);
                                  }else{
                                    print("The action is not supported. (No Browser App)");
                                  }
                                },
                                children:[
                                  TextSpan(text:"\nLinkedin",
                                      recognizer:TapGestureRecognizer()..onTap = ()async{
                                        final Uri url=Uri.parse('https://www.linkedin.com/in/ülkü-ayberk-yiğit-1b54b01b3/');
                                        if(await canLaunchUrl(url)){
                                          launchUrl(url);
                                        }else{
                                          print("The action is not supported. (No Browser App)");
                                        }
                                      }
                                  )
                                ],
                              ),

                            ),
                          )
                        ]
                    ),
                  ),
                  Container(
                      width:350,
                      child: Column(
                        children: [
                          Container(
                            width: screenWidth <321 ? 150 : 300,
                            margin: EdgeInsets.only(top:40.0),
                            child:
                          Text(
                            "SIGN UP FOR NEWSLETTER",
                            style: TextStyle(
                                fontFamily: "DMSerifText",
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                          ),
                          Text("Signup to get updates on articles",
                              style:TextStyle(fontFamily: "Inter",letterSpacing: 0.5,height: 1.5)
                          ),
                          Container(
                              width: screenWidth < 321 ? 200:300,
                            margin: EdgeInsets.only(top:25.0),
                            child:  TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Your email address',
                              ),),
                          ),
                          Container(
                              width: screenWidth <321 ? 200 : 300,
                              margin: EdgeInsets.only(top:10),
                              child: Material(
                                color: Colors.black,
                                child: InkWell(
                                  highlightColor: Colors.grey,
                                  child: Ink(
                                    height: 50,
                                    child: Center(child: Text("Subscribe",style: TextStyle(color: Colors.white,letterSpacing: 1.5,fontSize: 15),),),
                                  ),
                                  onTap: () {},
                                ),
                              )
                          )
                        ],
                      )
                  ),

                ],
              )
            ],
          ) :
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width:250,
                child:
                Column(
                    children: [
                      Container(
                        child: Text(
                          "ABOUT THE SITE",
                          style: TextStyle(
                              fontFamily: "DMSerifText",
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:20.0),
                        padding: EdgeInsets.only(top:20.0),
                        decoration: BoxDecoration(
                            border:Border(
                                top: BorderSide(width: 0.3,color: Colors.black)
                            )
                        ),
                        child: Text("Lorem ipsum Ut velit dolor Ut labore id fugiat in ut fugiat nostrud qui in dolore commodo "
                            "eu magna Duis cillum dolor officia esse mollit In reprehenderit commodo aliqua irure."
                            " proident Excepteur exercitation nulla. Lorem ipsum. ",
                            style:TextStyle(fontFamily: "Inter",letterSpacing: 0.5,height: 1.5)
                        ),
                      )
                    ]
                ),
              ),
              Container(
                width:250,
                child:
                Column(
                    children: [
                      Container(
                        child: Text(
                          "FOLLOW US",
                          style: TextStyle(
                              fontFamily: "DMSerifText",
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:20.0),
                        padding: EdgeInsets.only(top:20.0),
                        decoration: BoxDecoration(
                            border:Border(
                                top: BorderSide(width: 0.3,color: Colors.black)
                            )
                        ),
                        child: RichText(
                          text:TextSpan(
                            text:"GitHub",
                            style:TextStyle(fontFamily: "Inter",
                                letterSpacing: 0.5,
                                height: 1.5),
                            recognizer: TapGestureRecognizer()..onTap = ()async{
                              final Uri url=Uri.parse('https://github.com/pnzrkmpfwgn');
                              if(await canLaunchUrl(url)){
                                launchUrl(url);
                              }else{
                                print("The action is not supported. (No Browser App)");
                              }
                            },
                            children:[
                              TextSpan(text:"\nLinkedin",
                                  recognizer:TapGestureRecognizer()..onTap = ()async{
                                    final Uri url=Uri.parse('https://www.linkedin.com/in/ülkü-ayberk-yiğit-1b54b01b3/');
                                    if(await canLaunchUrl(url)){
                                      launchUrl(url);
                                    }else{
                                      print("The action is not supported. (No Browser App)");
                                    }
                                  }
                              )
                            ],
                          ),

                        ),
                      )
                    ]
                ),
              ),
              Container(
              width: screenWidth <321 ? 200 : 350,
                  child: Column(
                    children: [
                      Container(child:
                      Text(
                        "SIGN UP FOR NEWSLETTER",
                        style: TextStyle(
                            fontFamily: "DMSerifText",
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      ),
                      Container(
                        width: screenWidth < 321 ? 150 : 350,
                        child: Text("Signup to get updates on articles",
                            style:TextStyle(fontFamily: "Inter")
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:25.0),
                        child:  TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Your email address',
                          ),),
                      ),
                      Container(
                          width: 300,
                          margin: EdgeInsets.only(top:10),
                          child: Material(
                            color: Colors.black,
                            child: InkWell(
                              highlightColor: Colors.grey,
                              child: Ink(
                                height: 50,
                                child: Center(child: Text("Subscribe",style: TextStyle(color: Colors.white,letterSpacing: 1.5,fontSize: 15),),),
                              ),
                              onTap: () {},
                            ),
                          )
                      )
                    ],
                  )
              ),

            ],
          ),
          Container(
            margin: EdgeInsets.only(top:20),
          width: screenWidth <321 ? 200 : 300,
           child:Text(
               "©Copyright Ülkü Ayberk Yiğit",
           style: TextStyle(fontFamily: "Inter",color: Colors.black.withOpacity(0.6)),
           )
          )
        ],)
    );
  }
}

