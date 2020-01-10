import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:expanding_bottom_bar/expanding_bottom_bar.dart';


class Temoignage extends StatefulWidget {
  @override
  _TemoignageState createState() => _TemoignageState();
}

class _TemoignageState extends State<Temoignage> {
var demoIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("TEMOIGNAGES"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.chat),
            onPressed: (){},
          )
        ],
      ),
      backgroundColor: Colors.grey[200],
      body:SingleChildScrollView(
        child: SafeArea(
                  child: Padding(
            padding: const EdgeInsets.only(left:20, right: 20, top:20),
            child: Container(
              child: Column(
                children: <Widget>[
                 
                  Container(
                    height:600,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, i){
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.white
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                   // margin: EdgeInsets.only(top:10, bottom: 10),
                                    height: 135,
                                    width: 124,
                                    decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage("assets/d.jpg"),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                  SizedBox(width:10),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1, right:5),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Secours financiers,financiers"
                                        ),
                                        SizedBox(height:5),
                                         Text(
                                          "Secours financiers,financiers"
                                        ),
                                        SizedBox(height:5),
                                         Text(
                                          "Secours financiers,financiers"
                                        ),
                                        SizedBox(height:5),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(left:120),
                                              child: IconButton(
                                                icon:Icon(Icons.arrow_forward_ios),
                                                onPressed: (){},
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                               Container(
                                height:5,
                                color:Colors.grey[100]
                              )
                             
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}