import 'package:blog/utils/content_view.dart';
import 'package:flutter/material.dart';
import 'package:blog/utils/custom_tab.dart';
import 'package:blog/utils/search.dart';
import 'package:blog/utils/Navigation.dart';



class MobileViewPost2 extends StatefulWidget {
  const MobileViewPost2({Key? key}) : super(key: key);

  @override
  _MobileViewPost2State createState() {
    return _MobileViewPost2State();
  }
}

class _MobileViewPost2State extends State<MobileViewPost2> with TickerProviderStateMixin {
  late double screenWidth;
  late double screenHeight;

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
      key:scaffoldKey,
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
                      Flexible(flex: screenWidth < 769 ?2 :1,child:Container( child: mobileView(),),),
                      Flexible(child:Container(
                        margin: const EdgeInsets.only(top:50),

                        child: Image.asset("assets/2.jpg"),),),
                      Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 50),
                                    child: Text("The Goddess of City Pop",style: TextStyle(
                                        fontFamily: "DMSerifText",
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth < 769 ? 25 :45
                                    ),),),
                                  Container(
                                    decoration: const BoxDecoration(
                                        border:Border(
                                            left: BorderSide(width: 0.3,color: Colors.black),
                                            right: BorderSide(width: 0.3,color: Colors.black)
                                        )
                                    ),
                                    margin: const EdgeInsets.only(top: 50,bottom: 50),
                                    padding: const EdgeInsets.only(left:20,right:20),

                                    child: const Text("   The ultimate answer, for the ultimate question, 42. Adams Douglas, introduces this concept in his book The Hitchhiker's Guide to the Galaxy in a BBC News report. A caveman scrabbles stones: \"What do you get if you multiply six by nine?\", Arthur:\"Six by nine? Forty-two? You know, I have always felt that there was something fundamentally wrong with the Universe.\" A faint and distant voice then says: \"Base thirteen!\""
                                        "The number 42 is not a particularly significant number in base 13. However, in The Hitchhiker's Guide to the Galaxy, 42 is Deep Thought's answer to the \"the Ultimate Question of Life\" Deep Thought is a fictional supercomputer built to find the absolute answer.\n\n"
                                        "42 may not be a significant number in base-13 but in binary code 42's represented as 101010. This particular pattern of zeroes and ones appears often in mathematical and computer-related contexts.\n\n"
                                        "In Eastern religions such as Hinduism and Budism, many believe that a person reaches Nirvana or Moksha at the age of  42, the final goal of the life.\n\n"
                                        "42 holds an important part in the Bible as well. For Example in the Book of Revelations, the number 42 is associated with the age 42 months that the Antichrist will rule over the world. In another instance, 42 is the number of generations from Abraham to Jesus Christ.\n\n"
                                        "Two physical constants in the universe are the speed of light and the diameter of  a proton. It takes light 10^-42 seconds to cross the diameter of a proton. 42 degree also is an angle which reflect off the water and creates rainbow.\n\n"
                                        "42 is the ASCII code for the symbol '*' also known as asterisk. This symbol is often thought to translate to anything or everything.\n\n"
                                        "In conclusion, these are all bunch of nonsense. Even Adam Douglas reveals that it was supposed to be a joke. Mathematical and physical conviniences can only make sense in context of human science and perspective which doesn't say much. And do not get me started on the religious staff. Therefore, here is the ultimate answer...\n\n"
                                        "Life is meaningless. Unfortunately it is that an eyerolling cliche answer. No matter which way you put it, the life will end up either in a sufferring or a boring ending. It is so repetitive that you will start to wonder, why did not I just blow my brain out.\n\n"
                                        "Your ultimate purpose can be make as much  money as you can. You waste your life and just stack bundles of money and what? Government will probably print more of it and go in debt with non-existent assets so your money becomes high quality toilet papers or you will probably die and pass  all your money to your children hoping they do not just waste it on dope. Which they probably will.\n\n"
                                        "Your ultimate goal could be have a monogamous mariage with one or two kids. Hoping it all will be OK in the end where as it is highly a possiblity that your kids will hate you for bringing them to this rotten world. And your partner will probably be fed up with you and cheat on you.\n\n"
                                        "Your ultimate goal could be being a scientist who can discover a ground breaking stuff or invent a ground breaking thing. You can be a scientist who found a cure to cancer. Then men in black will show up in your doorstep. It will be too late to grasp the gravity of the situation that mega pharmaceudical companies will use the very secret service intellegence that are being funded by the government that taxes you to snuff the life out of you so they can sell a few more drug tablets. Maybe inventing stuff wouldn't be that bad? I am not going to go into the detail on that one, just ask to J. Robert Oppenheimer about that one, maybe you won't invent a weapon of mass destruction but I am sure you will feel like Daedalus, when you are watching helplessly as his child crashes into the sea.\n\n"
                                        "Your ultimate goal could be being a patriot. You will be a virtuous leader maybe, leading your people your country to a better future. All the efforts devoted, all the blood and sweat on your brawn. If you think about it, this might be a fulfilling life isn't it. Then I hope there isn't any cable TV and a channel that forecasts the world events in the afterlife because you will see the very people you saved are going to insult you and blame you for everything while the greedy people whom they elected will destroy everything you built in a life time in one go.\n\n"
                                        "Your ultimate goal could be being nobody. You will live a hedonistic life. Only thing you care is your desires and you will feel it every ounce of your desires. Until you realize that desires cost money and you ruined your brain and you don't feel any joy anymore. No worries, that's what crack coaine is for. What a way to go, overdosed on the streets all covered with human fecal matter.\n\n"
                                        "Believe it or not I am not an optimistic person, but I am not trying to get you down niether with all of these dark instances that may occur. To be honest I was just trying to put an at least bitter grin to your faces reading this. Because I was just making assumptions of some choice a person can make and making those choices the worst thing that can be imaginable with slim posibilities at most. However it might still be unfulfilling to live all these choices vice-versa.\n\n"
                                        "So what is the point then? "

                                      ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("assets/0.jpg",width: 150,height: 150,),
                                      Container(
                                        margin: const EdgeInsets.only(top:10),
                                        child:
                                        RichText(text: const TextSpan(
                                            text: "Posted By\n",
                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.black),
                                            children: [
                                              TextSpan(text:"Ayberk",style: TextStyle(fontWeight: FontWeight.normal))
                                            ]
                                        )),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top:15),
                                        child:const Text(
                                          "FullStack Developer",
                                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: Column(
                                      children: [
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/post3");
                                        }, child: const Text("Next>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                        const Text("---",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),),
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/post1");
                                        }, child: const Text("<Previous",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      // Flexible(child: FooterDesktop(),flex:screenWidth < 321 ? 5 : screenWidth < 769 ? 4 : 2)
                    ],
                  ),

                )
            )
        ),
      ),);
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



class Post2 extends StatefulWidget {
  const Post2({Key? key}) : super(key: key);

  @override
  State<Post2> createState() => _Post2State();
}

class _Post2State extends State<Post2> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:screenWidth < 1025 ? const MobileViewPost2() : LayoutBuilder(
        builder: (context,constrains)=> SingleChildScrollView(
            child:ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constrains.minHeight,
                ),
                child:IntrinsicHeight(
                  // child:showLoading ? SizedBox(width:screenWidth,height:screenHeight,child: FadeTransition(opacity: _animation,child: Loading(),),) :
                  child:Column(
                    children:<Widget> [
                      Flexible(flex: screenWidth < 769 ?2 :1,child:const SizedBox( height:200,child: Navigation(),),),
                      Flexible(child:Image.asset("assets/2.jpg",width: screenWidth < 769 ? 500 : 1000,),),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/0.jpg",width: 150,height: 150,),
                                  Container(
                                    margin: const EdgeInsets.only(top:10),
                                    child:
                                    RichText(text: const TextSpan(
                                        text: "Posted By\n",
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.black),
                                        children: [
                                          TextSpan(text:"Ayberk",style: TextStyle(fontWeight: FontWeight.normal))
                                        ]
                                    )),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top:15),
                                    child:const Text(
                                      "FullStack Developer",
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 50),
                                    child: Text("The Goddess of City Pop",style: TextStyle(
                                        fontFamily: "DMSerifText",
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth < 769 ? 25 :45
                                    ),),),
                                  Container(
                                    decoration: const BoxDecoration(
                                        border:Border(
                                            left: BorderSide(width: 0.3,color: Colors.black),
                                            right: BorderSide(width: 0.3,color: Colors.black)
                                        )
                                    ),
                                    margin: const EdgeInsets.only(top: 50,bottom: 50),
                                    padding: const EdgeInsets.only(left:20,right:20),
                                    width: screenWidth < 769 ? 600 : 1000,
                                    child: const Text("   It's past midnight, you are in the lonesome streets. Closed shops' neon lights are shining through, There's maybe a drizzle and you hear a distant fascinating music. It's not really a jazz but you can't call it an energetic pop music niether. It is City Pop you hear or as Japanese people call New Music.\n\n"
                                      "City Pop or New Music, emerged in late 1970s in Japan. There is no unified consensus among scholars regarding the definition of city pop. However, the term simply refers to music that projected an 'urban' feel and whose target are mostly city dwellers. Many of the artists from this era largely drew inspirations from American soft rock, boogie and funk. Some examples may feature tropical flourishes or elements taken from disco, jazz, etc.\n\n"
                                      "Tatsuro Yamashita, who is among the pioneers of the genre is sometimes called the 'King of the City Pop'. He is married with the 'Queen of the City Pop' Mariya Takeuchi and let's be real they are really really good. it's not important if you can speak Japanese or not just listen to Tatsuro Yamashita's itsuka/someday or Mariya Takeuchi's Plastic Love I am certain you will like them.\n\n"
                                      "However, as Frank Ocean said 'what is a king (or queen) to a  ̶g̶o̶d̶  Goddess '. Laddies and gentlemen I present to you Takako Mamiya. She has whopping one album, but I love every single one of ten songs in it. It's really hard to find an album where every song in it is legendary. Unfortunately she didn't get anymore recognition in Japan or in the world untill 2010s. Sadly there's little known about her. She started as a vocal artist in PAO. After the departure from the group she made the LEGENDARY album 'Love Trip' with Kitty Records.\n\n"
                                      "Furthermore, sadly the album wasn't succesful in Japan. That's one of the reason Japan deserves the third nu... I mean they may not like it at the time due to the album's western influence. It's sadly confirmed from a Korean podcast that she left the industry and got married. or is it? I mean she might be the goddess herself that created this album to bless our souls but she couldn't create more because our universe wouldn't handle one more. It just can't bare the awesomeness of hers. Jokes aside in hard times her songs were real help to me and still is, I hope she is happy and I hope she has a good life, I really hope she gets what really deserves as a musician.\n\n"
                                      ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/post3");
                                    }, child: const Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/post1");
                                    }, child: const Text("Previous",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      // Flexible(child: FooterDesktop(),flex:screenWidth < 321 ? 5 : screenWidth < 769 ? 4 : 2)
                    ],
                  ),

                )
            )
        ),
      ),
      persistentFooterButtons: [
        Container(
          color: Colors.grey[350],
          height: 25,
          child:  Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "©Copyright Ülkü Ayberk Yiğit",
                style: TextStyle(fontFamily: "Inter",color: Colors.black.withOpacity(0.6)),
              ),
            ],
          ),
        )
      ],
    );
  }
}

