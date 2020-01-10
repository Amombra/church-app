import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class Radiofm extends StatefulWidget {
  @override
  _RadiofmState createState() => _RadiofmState();
}

class _RadiofmState extends State<Radiofm> {
  //Radiofm maradio = Radiofm(frequence: "98.4",nom: "Radio Cocody FM",url_radio: "http://radio.nan.ci:8000/stream");
  var berlinWallFell = new DateTime.utc(1989, 11, 9);

  Duration position =Duration(seconds: 0);
Radio radioactuelle;
AudioPlayer audioPlayer;
StreamSubscription positionSub;
StreamSubscription stateSubscription;
Duration duree = Duration(seconds: 10);
PLayerState statut = PLayerState.stopped;
int index = 0;
var madate = DateTime.now().hour;


  Future play() async {
    await audioPlayer.play("");

    setState(() {
      statut = PLayerState.playing;
    });
  }

  Future pause()async{
    await audioPlayer.pause();
    setState(() {
     statut = PLayerState.paused; 
    });
  }

   IconButton bouton(IconData icone, double taille, ActionMusic action){
  return IconButton(
    iconSize: taille,
    color: Colors.orange,
    icon: Icon(icone),
    onPressed: (){
      switch(action){
        case ActionMusic.play:
         play();
        // verififcaton(madate);
         break;
        case ActionMusic.pause:
         pause();
         break;
      }
    },
  );
}

@override
    void initState() {
    super.initState();
   //radioactuelle =maradio; 
    configurationAudioPlayer();
    //getCategories();  
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color.fromRGBO(1, 10, 32, 1),
     backgroundColor:Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(
            //                 image: DecorationImage(
            //                   image: AssetImage("assets/a.jpg"),
            //                   fit: BoxFit.cover,
            //                   colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)

            //                 )
            //               ),
            child:Column(
              children: <Widget>[
                SizedBox(height:20),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Church Fm",
                      style: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                    ),
                  ],
                ),
                SizedBox(height:20),
                Container(
                  height: 250,
                  width:250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                            image: DecorationImage(
                              image: AssetImage("assets/a.jpg"),
                              fit: BoxFit.cover,
                             // colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                                )
                              ),
                          child: SpinKitWave(
                                  color: Colors.white,
                                  size: 80.0,
                                ),
                        ),
                SizedBox(
                  height:15
                ),
                
                 SizedBox(
                  height:15
                ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "88.3",
                      style: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40
                      ),
                    ),
                  ],
                ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Radio de Cocody - 'Chrétienne'",
                        style: TextStyle(
                          color:Colors.orange,
                          fontWeight:FontWeight.w400,
                        ),
                      ),
                    ),
                  
                SizedBox(
                  height:7
                ),
                 
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        DateFormat.yMMMMEEEEd().format(DateTime.now()),
                        style: TextStyle(
                          color:Colors.white54,
                          fontWeight:FontWeight.w700,
                        ),
                      ),
                    ),
                 
                 SizedBox(
                  height:60
                ),

                Padding(
                  padding: const EdgeInsets.only(left:5, right: 5),
                  child: Row(
                      children: <Widget>[
                        Container(
                          height:5,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                        Container(
                          height:10,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                        Container(
                          height:15,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                        Container(
                          height:17,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                        Container(
                          height:23,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                        Container(
                          height:25,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:27,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:30,
                          width:2,
                          color:Colors.orange
                        ),
                        
                        SizedBox(width:2),
                         Container(
                          height:35,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:37,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:40,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:40,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:45,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:55,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:55,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:50,
                          width:2,
                          color:Colors.orange
                        ),
                         SizedBox(width:2),
                         Container(
                          height:47,
                          width:2,
                          color:Colors.orange
                        ),
                         SizedBox(width:2),
                         Container(
                          height:45,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:35,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:30,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:27,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:25,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:15,
                          width:2,
                          color:Colors.orange
                        ),
                         Container(
                          height:15,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                        Container(
                          height:17,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                        Container(
                          height:23,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                        Container(
                          height:25,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:27,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:30,
                          width:2,
                          color:Colors.orange
                        ),
                        
                        SizedBox(width:2),
                         Container(
                          height:35,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:37,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:40,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:40,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:45,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:55,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:55,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:50,
                          width:2,
                          color:Colors.orange
                        ),
                         SizedBox(width:2),
                         Container(
                          height:47,
                          width:2,
                          color:Colors.orange
                        ),
                         SizedBox(width:2),
                         Container(
                          height:45,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:35,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:30,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:27,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:25,
                          width:2,
                          color:Colors.orange
                        ),
                        SizedBox(width:2),
                         Container(
                          height:15,
                          width:2,
                          color:Colors.orange
                        ),
                        
          //////////////////////////////////////////////////
          //////////////////////////////////////////////////
                        Container(
                          height:15,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                        Container(
                          height:17,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                        Container(
                          height:23,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                        Container(
                          height:25,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:27,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:30,
                          width:2,
                          color:Colors.white
                        ),
                        
                        SizedBox(width:2),
                         Container(
                          height:35,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:37,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:40,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:40,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:45,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:55,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:55,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:50,
                          width:2,
                          color:Colors.white
                        ),
                         SizedBox(width:2),
                         Container(
                          height:47,
                          width:2,
                          color:Colors.white
                        ),
                         SizedBox(width:2),
                         Container(
                          height:45,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:35,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:30,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:27,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:25,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:15,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width: 2),
                         Container(
                          height:15,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                        Container(
                          height:17,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                        Container(
                          height:23,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                        Container(
                          height:25,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:27,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:30,
                          width:2,
                          color:Colors.white
                        ),
                        
                        SizedBox(width:2),
                         Container(
                          height:35,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:37,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:40,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:40,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:45,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:55,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:55,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:50,
                          width:2,
                          color:Colors.white
                        ),
                         SizedBox(width:2),
                         Container(
                          height:47,
                          width:2,
                          color:Colors.white
                        ),
                         SizedBox(width:2),
                         Container(
                          height:45,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:35,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:30,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:27,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:25,
                          width:2,
                          color:Colors.white
                        ),
                        SizedBox(width:2),
                         Container(
                          height:15,
                          width:2,
                          color:Colors.white
                        ),
                         SizedBox(width:2),
                         Container(
                          height:10,
                          width:2,
                          color:Colors.white
                        ),
                         SizedBox(width:2),
                         Container(
                          height:5,
                          width:2,
                          color:Colors.white
                        ),
                      ],
                    ),
                ),

                
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.center,
                child:  bouton((statut == PLayerState.playing) ? Icons.pause: Icons.play_circle_filled, 50, (statut == PLayerState.playing) ? ActionMusic.pause: ActionMusic.play),
                
              )
              ],
            )
          ),
        ),
      ),
    );
    
  }
void configurationAudioPlayer(){
  audioPlayer =  AudioPlayer();
  positionSub = audioPlayer.onAudioPositionChanged.listen(
    (pos) => setState(()=>pos)
  );
  stateSubscription = audioPlayer.onAudioPositionChanged.listen((state){
    if(state == AudioPlayerState.PLAYING){
      setState(() {
       duree = audioPlayer.duration; 
      });
    }  else if (state == AudioPlayerState.STOPPED){
      setState(() {
        statut = PLayerState.stopped;
      });
    }
  }, onError: (message){
    print('erreur: $message');
    setState(() {
      statut = PLayerState.stopped;
      duree = Duration(seconds: 0);
      position = Duration(seconds: 0);
    });
  }
  );

  }
  
  Widget  opportune(){
  return Container(
    height: 30,
    width: 2,
    color: Colors.white,
  );
}

Widget  mima(){
  return Container(
    height: 45,
    width: 2,
    color: Colors.orange,
  );
}

  
}
enum ActionMusic {
  play,
  pause,
}
enum PLayerState{
  playing,
  stopped,
  paused
}


