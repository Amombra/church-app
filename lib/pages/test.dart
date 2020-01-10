import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/a.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
                  child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                   Container(
                     margin: EdgeInsets.only(top:15),
                     alignment:Alignment.center,
                     child: Text(
                       "Live WebTV",
                       style: TextStyle(
                         fontWeight:FontWeight.bold,
                         fontSize: 20,
                         color:Colors.white
                       ),
                       ) 
                   ), 
                   Icon(Icons.live_tv, color: Colors.white, )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height/2.5,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/7),
                  //alignment: Alignment.center,
                  child: _controller.value.initialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Container(
                        color: Colors.white,
                        child: SpinKitRing(
                        color: Colors.purple,
                        size: 50.0,
                      ),
                      ),
                ),
                SizedBox(height:45),
                Container(
                  height: 45,
                  width:45,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(100),
                    color: Colors.white
                  ),
                  child: IconButton(
                     onPressed: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
              },
                    icon: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.black,),
                  ),
                ),
                SizedBox(height:20),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left:35),
                      child: Text(
                        'Suivez le direct de Dena Mwana depuis Abidjan',
                        style: TextStyle(
                          color:Colors.white,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}