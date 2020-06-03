import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math' as math;

// These are import methods for custom icons
import 'icons/custom_icons_icons.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  // This is for screen height and width
  final double width = MediaQuery.of(context).size.width;
  final double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(bottom: 70.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new ClipOval(
            child: new Container(
              color: const Color(0xffc9c9c9),
              height: 45,
              width: 45,
              child: new Padding(
                padding: EdgeInsets.only(top: 1.5),
                child: new Image(
                  image: AssetImage('assets/images/anon.png'), // TODO: Make this dynamically loaded
                ),
              ),
            ),
          ),
          new Container( // TODO: Make this a stack with text in front
            width: width * 0.73,
            height: 85,
            color: Colors.transparent,
            child: new Container(
              decoration: new BoxDecoration(
                color: const Color(0xffe0e0e0),
                borderRadius: BorderRadius.all(Radius.circular(40.0))
              ),
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Image(
                  image: AssetImage('assets/images/upvote.png'), // 0xfff75422 is upvote color
                  height: 25,
                  width: 25,
                ),
                new Text(
                  "0",
                  style: new TextStyle(
                    color: const Color(0xffe0e0e0),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Product-Sans',
                    decoration: TextDecoration.none,
                  ),
                ),
                Transform.rotate(
                  angle: math.pi,
                  child: new Image(
                    image: AssetImage('assets/images/upvote.png'), // 0xfff75422 is upvote color
                    height: 25,
                    width: 25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}