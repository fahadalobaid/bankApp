import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body(Card card);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // this size provides us total height and width of the page

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/background.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/background.png"),
            width: size.width * 0.3,
          )
        ],
      ),
    );
  }
}
