import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'comment.dart';
import 'sizeConfig.dart';
import 'icons/custom_icons_icons.dart';

bool filterNew = true;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // Used to instantiate the object for screen height and width
    SizeConfig().init(context);

    return Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: new Padding( // Adds margin from the top to seperate the Action Bar from our banner
        padding: const EdgeInsets.only(top: 35.0),
        child: new Column( // Master column
          children: <Widget>[
            new Row( // Row for banner
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(
                  child: new Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: new Icon( // The sandwich/dehaze icon
                      Icons.dehaze,
                      size: 40.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                new Text( // The app's title. TODO: Make it based upon user's location.
                  "Glen Rock, NJ",
                  style: new TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    fontFamily: 'Product-Sans',
                    decoration: TextDecoration.none,
                  ),
                ),
                new Container(
                  child: new Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: new Icon( // TODO: Make this a Stack because we want to add a red circle with a number in it
                      CustomIcons.chat,
                      size: 27.5,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            new Divider(
              thickness: 1.5,
            ),
            new Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text(
                    "New",
                    style: new TextStyle(
                      color: Colors.black,
                      fontWeight: filterNew ? FontWeight.bold : FontWeight.normal,
                      fontSize: 20.0,
                      fontFamily: 'Product-Sans',
                      decoration: filterNew ? TextDecoration.underline : TextDecoration.none,
                    ),
                  ),
                  new Container(
                    width: 1,
                    height: 30,
                    color: Theme.of(context).dividerColor,
                  ),
                  new Text(
                    "Hot",
                    style: new TextStyle(
                      color: Colors.black,
                      fontWeight: !filterNew ? FontWeight.bold : FontWeight.normal,
                      fontSize: 20.0,
                      fontFamily: 'Product-Sans',
                      decoration: !filterNew ? TextDecoration.underline : TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            new Expanded(
              child: new ListView(
                reverse: true,
                children: <Widget>[
                  // TODO: Dynamically instantiate comnents here
                  Comment(content: "This is a post"),
                  Comment(content: "Hey, LoChat is pretty cool!"),
                  Comment(content: "This is not a sponsored post. lol"),
                  Comment(content: "Hello World!"),
                  Comment(content: "Have you guys tried the new bagel \nshop in town?"), // 34 (dependent upon screen width) characters before \n
                  Comment(content: "I'm gonna tell all of my friends \nabout LoChat!"), 
                  Comment(content: "Gucci Kikuchi!"),
                  Comment(content: "Uh"),
                  Comment(content: "Bruh"),
                ],
              ),
            ),
            new Padding(
              padding: EdgeInsets.only(top: 2.5, bottom: 2.5),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new ClipOval(
                    child: new Container(
                      color: const Color(0xffc9c9c9),
                      height: 40,
                      width: 40,
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
                        width: SizeConfig.screenWidth * .7,
                        height: 45,
                        color: Colors.transparent,
                        child: new Container(
                          decoration: new BoxDecoration(
                            color: const Color(0xffe0e0e0),
                            borderRadius: BorderRadius.all(Radius.circular(40.0))
                          ),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(left: 27.5, top: 14.5),
                        child: new Text(
                          "What's on your mind?",
                          style: TextStyle(
                            color: const Color(0xff656565),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Container(
                    height: 40,
                    width: 40,
                    decoration: new BoxDecoration(
                      color: const Color(0xff00c6ff),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: new Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: new Image(
                        image: AssetImage('assets/images/send.png'),
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}