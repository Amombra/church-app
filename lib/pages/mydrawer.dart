import 'package:church/pages/listvideo.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Column(
      children: <Widget>[
        ListMenu(title: "Flutter", url: "https://flutterlist.herokuapp.com/",),
      ],
    )
      ),
    );
  }
}

class ListMenu extends StatelessWidget {
  ListMenu({this.title, this.url});
  final String title;
  final String url;
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(left:50, right: 40, top:30),
        child: GestureDetector(
                   onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>ListVideo(url: url, title: "title",),

                ));
              },
            child: Container(
              child: Container(
                alignment: Alignment.center,
                child:Text(
                  "Méditations",
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 20,
                    fontWeight:FontWeight.bold
                  ),
                  ),
              ),
            height: 150,
            width: 260,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/a.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
              )
            ),
          ),
        ),
      );
    }
  }