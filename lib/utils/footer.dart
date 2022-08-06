import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:50.0),
      color: Colors.grey[350],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              width:350,
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
                Text("Signup to get updates on articles",
                style:TextStyle(fontFamily: "Inter",letterSpacing: 0.5,height: 1.5)
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
    );
  }
}

