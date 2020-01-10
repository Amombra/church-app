import 'package:church/pages/mydrawer.dart';
import 'package:flutter/material.dart';
class VideoAp extends StatefulWidget {
  @override
  _VideoApState createState() => _VideoApState();
}

class _VideoApState extends State<VideoAp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.transparent,
      appBar: AppBar(
        backgroundColor:Colors.purple,
        title: Text("Live WebTv"),
      ),
      body: MyDrawer()
    );
  }
}