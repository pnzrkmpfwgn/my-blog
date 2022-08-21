import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class FooterDesktop extends StatelessWidget {
  const FooterDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top:50.0),
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
                  SizedBox(
                    width:250,
                    child:
                    Column(
                        children: [
                          const Text(
                            "ABOUT THE SITE",
                            style: TextStyle(
                                fontFamily: "DMSerifText",
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top:20.0),
                            padding: const EdgeInsets.only(top:20.0),
                              width: screenWidth <321 ? 200 : 300,
                            decoration: const BoxDecoration(
                                border:Border(
                                    top: BorderSide(width: 0.3,color: Colors.black)
                                )
                            ),
                            child: const Text("This is a blog website created with Flutter Platform for some reason.",
                                style:TextStyle(fontFamily: "Inter",letterSpacing: 0.5,height: 1.5)
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(
                    width:250,
                    child:
                    Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top:40.0),
                            child: const Text(
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
                            margin: const EdgeInsets.only(top:20.0),
                            padding: const EdgeInsets.only(top:20.0),
                            decoration: const BoxDecoration(
                                border:Border(
                                    top: BorderSide(width: 0.3,color: Colors.black)
                                )
                            ),
                            child: RichText(
                              text:TextSpan(
                                text:"GitHub",
                                style:const TextStyle(fontFamily: "Inter",
                                    letterSpacing: 0.5,
                                    height: 1.5,color: Colors.black),
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

                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(
                      width:350,
                      child: Column(
                        children: [
                          Container(
                            width: screenWidth <321 ? 150 : 300,
                            margin: const EdgeInsets.only(top:40.0),
                            child:
                          const Text(
                            "SIGN UP FOR NEWSLETTER",
                            style: TextStyle(
                                fontFamily: "DMSerifText",
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                          ),
                          const Text("Signup to get updates on articles",
                              style:TextStyle(fontFamily: "Inter",letterSpacing: 0.5,height: 1.5)
                          ),
                          Container(
                              width: screenWidth < 321 ? 200:300,
                            margin: const EdgeInsets.only(top:25.0),
                            child:  const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Your email address',
                              ),),
                          ),
                          Container(
                              width: screenWidth <321 ? 200 : 300,
                              margin: const EdgeInsets.only(top:10),
                              child: Material(
                                color: Colors.black,
                                child: InkWell(
                                  highlightColor: Colors.grey,
                                  child: Ink(
                                    height: 50,
                                    child: const Center(child: Text("Subscribe",style: TextStyle(color: Colors.white,letterSpacing: 1.5,fontSize: 15),),),
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
              SizedBox(
                width:250,
                child:
                Column(
                    children: [
                      const Text(
                        "ABOUT THE SITE",
                        style: TextStyle(
                            fontFamily: "DMSerifText",
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top:20.0),
                        padding: const EdgeInsets.only(top:20.0),
                        decoration: const BoxDecoration(
                            border:Border(
                                top: BorderSide(width: 0.3,color: Colors.black)
                            )
                        ),
                        child: const Text("This is a blog website created with Flutter Platform for some reason.",
                            style:TextStyle(fontFamily: "Inter",letterSpacing: 0.5,height: 1.5)
                        ),
                      )
                    ]
                ),
              ),
              SizedBox(
                width:250,
                child:
                Column(
                    children: [
                      const Text(
                        "FOLLOW US",
                        style: TextStyle(
                            fontFamily: "DMSerifText",
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top:20.0),
                        padding: const EdgeInsets.only(top:20.0),
                        decoration: const BoxDecoration(
                            border:Border(
                                top: BorderSide(width: 0.3,color: Colors.black)
                            )
                        ),
                        child: RichText(
                          text:TextSpan(
                            text:"GitHub",
                            style:const TextStyle(fontFamily: "Inter",
                                letterSpacing: 0.5,
                                height: 1.5,
                              color: Colors.black
                            ),
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

                        ),
                      )
                    ]
                ),
              ),
              SizedBox(
              width: screenWidth <321 ? 200 : 350,
                  child: Column(
                    children: [
                      const Text(
                        "SIGN UP FOR NEWSLETTER",
                        style: TextStyle(
                            fontFamily: "DMSerifText",
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      SizedBox(
                        width: screenWidth < 321 ? 150 : 350,
                        child: const Text("Signup to get updates on articles",
                            style:TextStyle(fontFamily: "Inter")
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top:25.0),
                        child:  const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Your email address',
                          ),),
                      ),
                      Container(
                          width: 300,
                          margin: const EdgeInsets.only(top:10),
                          child: Material(
                            color: Colors.black,
                            child: InkWell(
                              highlightColor: Colors.grey,
                              child: Ink(
                                height: 50,
                                child: const Center(child: Text("Subscribe",style: TextStyle(color: Colors.white,letterSpacing: 1.5,fontSize: 15),),),
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
            margin: const EdgeInsets.only(top:20),
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

