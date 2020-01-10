import 'package:flutter/material.dart';
import 'package:flutter_animation_set/animation_set.dart';
import 'package:flutter_animation_set/animator.dart';

class YYThreeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          makeLine(0),
          makeLine(50),
          makeLine(100),
        ],
      ),
    );
  }
}

Widget makeLine(int delay) {
  return AnimatorSet(
    child: Container(
      color: Colors.white,
      width: 10,
      height: 5,
    ),
    animatorSet: [
      TY(from: 0.0, to: 5.0, duration: 400, delay: delay, curve: Curves.fastOutSlowIn,),
      TY(from: 5.0, to: 0.0, duration: 400, curve: Curves.fastOutSlowIn,),
    ],
  );
}