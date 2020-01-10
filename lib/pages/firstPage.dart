import 'package:church/pages/calendar.dart';
import 'package:church/pages/catWord.dart';
import 'package:church/pages/communit.dart';
import 'package:church/pages/dashboard.dart';
import 'package:church/pages/donation.dart';
import 'package:church/pages/montest.dart';
import 'package:church/pages/radio.dart';
import 'package:church/pages/temoignage.dart';
import 'package:church/pages/test.dart';
import 'package:church/pages/video_demande.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';



class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    Widget moncarousel(){
      return Container(
        height:240,
        width:MediaQuery.of(context).size.width,
        child: Carousel(
          boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotBgColor: Colors.black54,
            showIndicator: true,
            indicatorBgPadding: 15,
            images: [
              ExactAssetImage("assets/c.jpg"),
              ExactAssetImage("assets/b.jpg"),
              ExactAssetImage("assets/a.jpg"),
              ExactAssetImage("assets/d.jpg"),
              ExactAssetImage("assets/e.jpg"),
              
            ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Church News", style: TextStyle(
          color:Colors.white
        ),),
        actions: <Widget>[
          Icon(Icons.home,
          color:Colors.white
          )
        ],
      ),
      drawer: Drawer(
        child:Container(
          padding:EdgeInsets.only(left:8, top:35),
          color:Colors.grey[200],
          child:SingleChildScrollView(
            child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://cdn.pixabay.com/photo/2017/03/02/05/14/bible-2110439__340.jpg"),

                ),
              ),
              accountName: Text("Opportune Katché", style: TextStyle(fontWeight: FontWeight.w700,color:Colors.white),),
              accountEmail: Text("katcheopportune@gmail.com", style: TextStyle(fontWeight: FontWeight.w700, color:Colors.white),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/11/29/13/51/alone-1869997__340.jpg"),
              ),
            ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Radiofm()
                      ));
                    },
                        child: Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.radio, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Web Radio",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  SizedBox(
                    width:15
                  ),

                  GestureDetector(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Catword()
                      ));
                    }, 
                    
                        child: Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.book, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Enseignement",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),

                  
                ],
                ),

                SizedBox(
                    height:15
                  ),

                Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>VideoApp()
                      ));
                    },
                        child:Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.live_tv, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Live WebTV",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  SizedBox(
                    width:15
                  ),

                  GestureDetector(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Informations()
                      ));
                    },
                        child: Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.video_library, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Vidéo demande",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),

                  
                ],
                ),
                  SizedBox(
                    height:15
                  ),

                 Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){

                    },
                        child:Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.bookmark_border, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Information",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  SizedBox(
                    width:15
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Donation()
                      ));
                    },
                        child: Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.favorite_border, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Don",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),

                  
                ],
                ),
                SizedBox(
                    height:15
                  ),

                   Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Temoignage()
                      ));
                    },
                        child:Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.supervised_user_circle, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Témoignage",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  SizedBox(
                    width:15
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>CalendarViewApp()
                      ));
                    },
                        child: Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.new_releases, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Programme",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),

                  
                ],
                ),
                
            ],
          ),
          )
        )
      ),
      backgroundColor:Colors.grey[200],
      body: SingleChildScrollView(
        child:Container(
          child:Column(
            children: <Widget>[
              moncarousel(),
              SizedBox(height:65),
               Padding(
                 padding: const EdgeInsets.only(left:20, right:20),
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                       topRight: Radius.circular(25),
                       topLeft:Radius.circular(25),
                       bottomLeft: Radius.circular(25),
                       bottomRight: Radius.circular(25),
                     ),
                     color:Colors.white,
                   ),
                   
                   height: MediaQuery.of(context).size.height/3,
                   width:MediaQuery.of(context).size.width,
                   child:Padding(
                     padding: const EdgeInsets.only(top:20),
                     child: Column(
                       children: <Widget>[
                         Text(
                           "WORD OF THE DAY",
                           style: TextStyle(
                             color: Colors.purple,
                             fontWeight: FontWeight.bold,
                             fontSize: 26
                           ),
                           
                         ),
                         SizedBox(
                           height:30
                         ),
                         Container(
                           padding: EdgeInsets.only(left:25, right: 25),
                           child: Text(
                             "Celui qui cultive son champ est rassasié de pain, Mais celui qui poursuit des choses vaines est dépourvu de sens",
                             textAlign: TextAlign.justify,
                             style: TextStyle(
                               //color: Colors.purple,
                               fontWeight: FontWeight.w400,
                               fontStyle: FontStyle.italic
                             ),
                             
                           ),
                         ),
                         SizedBox(
                           height:35
                         ),
                         Container(
                           child:Text(
                             "Proverbes 12:11",
                             style:TextStyle(
                               color: Colors.purple,
                               fontWeight: FontWeight.bold,
                               fontSize: 20
                             )
                           )
                         )
                       ],
                     ),
                   )
                 ),
               )
              // Center(
              //   child:SpinKitChasingDots(
              //   color: Colors.purple,
              //   size: 100.0,
              // )
              // )
              
            ],
          )
        ) ,
        ),
      
    );
  }
}