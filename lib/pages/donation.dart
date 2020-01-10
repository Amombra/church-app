import 'package:flutter/material.dart';
import 'package:flutter_animation_set/widget/transition_animations.dart';
import 'package:flutter_animation_set/widget/behavior_animations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Donation extends StatefulWidget {
  @override
  _DonationState createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Donations"),
      ),
      body:SingleChildScrollView(
        child:Container(
          child:Column(
            children: <Widget>[
             
              Container(
               margin: EdgeInsets.only(top:200),
                child: Center(
                  child:SpinKitPumpingHeart(
                  color: Colors.red,
                  size: 150.0,
                )
                ),
              ),
              Text(
                "Donation",
                style: TextStyle(
                  color:Colors.red,
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  fontStyle: FontStyle.italic
                ),
              )
            ],
          )
        )
      )
    );
  }
}