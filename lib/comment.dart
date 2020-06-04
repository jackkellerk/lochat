import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math' as math;

// custom imports
import 'screenSize.dart';

class Comment extends StatelessWidget {


  // These variables are arguments
  final String content;

  // Constructor (@required is for a required parameter)
  Comment({
    @required this.content,
  });

  @override
  Widget build(BuildContext context) {

    // This is the TextStyle for the reply, posted date, and sponspored text
    final TextStyle commentTS = new TextStyle(color: new Color(0xffe0e0e0), decoration: TextDecoration.none, fontFamily: 'Product-Sans', fontWeight: FontWeight.bold, fontSize: 13.0,);

    return Padding(
      padding: EdgeInsets.only(bottom: 30.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget> [
          new Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: new Text(
              "Sponsored",
              style: commentTS
            ),
          ),
          new Row(
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
              new Stack(
                children: <Widget>[
                  new Container(
                    width: screenWidth(context) * 0.73,
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
                    padding: EdgeInsets.only(left: 30.0, top: 15.0),
                    child: new Text(
                    content,
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontFamily: 'Product-Sans',
                      ),
                    ),
                  ),
                ],
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
                      color: Color(0xffe0e0e0),
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
          new Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: new Row(
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.only(left: 85.0),
                  child: new Text(
                    "Just now!",
                    style: commentTS
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(left: 85.0),
                  child: new Text(
                    "0 replies",
                    style: commentTS
                  ),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}