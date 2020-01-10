import 'dart:convert';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:church/pages/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ListVideo extends StatefulWidget {
  final String title;
  final String url;
  ListVideo({this.title, this.url});
  

  @override
  _ListVideoState createState() => _ListVideoState();
}

class _ListVideoState extends State<ListVideo> {
  Future<List> getData() async {
    final response = await http.get(widget.url);
    return json.decode(response.body);

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        ),
       // drawer:MyDrawer(),
        body: FutureBuilder<List>(
          future: getData(),
          builder: (context, snapshot){
            if(snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
            ? Playvideos(list: snapshot.data,)
            :Center(
              child:CircularProgressIndicator()
            );
          },
        ),
    );
  }
}

class Playvideos extends StatelessWidget {
  List list;
  Playvideos({this.list});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list==null?0:list.length,
      itemBuilder: (context, i){
        return Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Gningnin(url: "https://youtube.com/embed/${list[i]['contentDetails']['videoId']}",)
                  ));
                },
                child: Container(
                  height:180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(list[i]['snippet']['thumbnails']['high']['url']),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              Padding(padding:const EdgeInsets.all(10)),
              Text(list[i]['snippet']['title'],style:TextStyle(
                fontSize: 18
              )),
              Padding(padding:EdgeInsets.all(10)),
              Divider()
            ],
          ),
        );
      },
    );
  }
}

class Gningnin extends StatelessWidget {
  final String url;
  Gningnin({this.url});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Center(
        child: WebviewScaffold(
          url: url,
        ),
      ),
    );
  }
}