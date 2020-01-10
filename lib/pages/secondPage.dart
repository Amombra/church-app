import 'package:church/pages/thirtPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Community Church", style: TextStyle(
          color:Colors.white
        ),),
        actions: <Widget>[
        Icon(Icons.home,
          color:Colors.white
          )
          
        ],
      ),
      backgroundColor: Colors.grey[200],
      body:SingleChildScrollView(
        child:Container(
          child:Column(
            children: <Widget>[
               Container(
                 height:300,
                 child:Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return new Image.network(
                        "https://cdn.pixabay.com/photo/2017/08/06/10/19/people-2590997__340.jpg",
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: 10,
                    viewportFraction: 0.8,
                    scale: 0.9,
                    autoplayDelay:5 ,
                  )
               ),
               SizedBox(
                 height:15
               ),
               Padding(
                 padding: const EdgeInsets.only(left:20, right:20),
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                       topRight: Radius.circular(60),
                       topLeft:Radius.circular(60)
                     ),
                     color:Colors.white,
                   ),
                   
                   height: MediaQuery.of(context).size.height/2.1,
                   width:MediaQuery.of(context).size.width,
                   child:Padding(
                     padding: const EdgeInsets.only(top:25),
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
            ],
          )
        )
      )
    );
  }
}