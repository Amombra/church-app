import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
    VideoPlayerController _controller;
    bool _isPlaying = false;

@override
void initState() {
  _controller = VideoPlayerController.network(
        'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
        ..addListener((){
          final bool isPlaying = _controller.value.isPlaying;
          if(isPlaying != _isPlaying){
            setState(() {
              _isPlaying != isPlaying;
            });
          }
        })
        ..initialize().then((_){
          setState(() {
            
          });
        });
     
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        
        title:Text("Community Church"),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.home),
            onPressed: (){},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height:25
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child:Icon(Icons.mic, color:Colors.purple)
                  ),
                 
                  Container(
                    child:Text(
                      "DETAILS",
                      style:TextStyle(
                        color:Colors.purple,
                        fontWeight: FontWeight.bold
                      )
                    )
                  )
                ],
              ),
               SizedBox(
                    height: 20,
              ),

             Container(
               padding: EdgeInsets.only(bottom: 20),
                  width: MediaQuery.of(context).size.width/1.19,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color:Colors.grey[300], width:1)
                  ),
                 // height: 300,
                  child:Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 160,
                        width:MediaQuery.of(context).size.width/1.19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/c.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                          )
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "SERMONS",
                            style: TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle:FontStyle.italic
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height:20
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Megan",
                                style: TextStyle(
                                  color:Colors.purple,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height:7
                              ),
                              Text(
                                "Megan church",
                                style: TextStyle(
                                  color:Colors.purple,
                                  
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height:50,
                            width: 50,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color:Colors.purple
                            ),
                            child:IconButton(
                              icon:Icon(Icons.play_arrow,color:Colors.white),
                              onPressed: (){},
                            )
                          ),
                          SizedBox(
                            width:20
                          ),
                           Container(
                            height:50,
                            width: 50,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color:Colors.purple
                            ),
                            child:IconButton(
                              icon:Icon(Icons.star_border,color:Colors.white),
                              onPressed: (){},
                            )
                          )
                        ],
                      )
                    ],
                  )
                ),
                 SizedBox(
                    height: 20,
              ),

             Container(
               padding: EdgeInsets.only(bottom: 20),
                  width: MediaQuery.of(context).size.width/1.19,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color:Colors.grey[300], width:1)
                  ),
                 // height: 300,
                  child:Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 160,
                        width:MediaQuery.of(context).size.width/1.19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/a.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                          )
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "SERMONS",
                            style: TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle:FontStyle.italic
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height:20
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Megan",
                                style: TextStyle(
                                  color:Colors.purple,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height:7
                              ),
                              Text(
                                "Megan church",
                                style: TextStyle(
                                  color:Colors.purple,
                                  
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height:50,
                            width: 50,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color:Colors.purple
                            ),
                            child:IconButton(
                              icon:Icon(Icons.play_arrow,color:Colors.white),
                              onPressed: (){},
                            )
                          ),
                          SizedBox(
                            width:20
                          ),
                           Container(
                            height:50,
                            width: 50,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color:Colors.purple
                            ),
                            child:IconButton(
                              icon:Icon(Icons.star_border,color:Colors.white),
                              onPressed: (){},
                            )
                          )
                        ],
                      )
                    ],
                  )
                ),
               SizedBox(
                    height: 20,
              ),

             Container(
               padding: EdgeInsets.only(bottom: 20),
                  width: MediaQuery.of(context).size.width/1.19,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color:Colors.grey[300], width:1)
                  ),
                 // height: 300,
                  child:Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 160,
                        width:MediaQuery.of(context).size.width/1.19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/b.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                          )
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "SERMONS",
                            style: TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle:FontStyle.italic
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height:20
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Megan",
                                style: TextStyle(
                                  color:Colors.purple,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height:7
                              ),
                              Text(
                                "Megan church",
                                style: TextStyle(
                                  color:Colors.purple,
                                  
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height:50,
                            width: 50,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color:Colors.purple
                            ),
                            child:IconButton(
                              icon:Icon(Icons.play_arrow,color:Colors.white),
                              onPressed: (){},
                            )
                          ),
                          SizedBox(
                            width:20
                          ),
                           Container(
                            height:50,
                            width: 50,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color:Colors.purple
                            ),
                            child:IconButton(
                              icon:Icon(Icons.star_border,color:Colors.white),
                              onPressed: (){},
                            )
                          )
                        ],
                      )
                    ],
                  )
                ),
              

          ],
          ),
        ),
      ),
    );
  }
}



