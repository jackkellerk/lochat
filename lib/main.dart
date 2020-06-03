import 'package:flutter/material.dart';
import 'dart:ui';

// These are import methods for custom icons
import 'icons/custom_icons_icons.dart';

// These are import methods for custom classes
import 'comment.dart';

// This calls the build method for the class OutfitApp and displays it on the screen
void main() => runApp(LoChatApp());

bool filterNew = true;

class LoChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoChat',
      home: Scaffold(
        body: Container(
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
                    new Text( // The app's title. Make it based upon user's location.
                      "Glen Rock, NJ",
                      style: new TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        fontFamily: 'Product-Sans',
                        decoration: TextDecoration.none,
                      ),
                    ),
                    new Container(
                      child: new Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: new Icon( // Make this a Stack because we want to add a red circle with a number in it
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
                    children: <Widget>[
                      // TODO: Dynamically instantiate comnents here
                      Comment(),
                      Comment(),
                      Comment(),
                      Comment(),
                      Comment(),
                      Comment(),
                      Comment(),
                      Comment(),
                      Comment(),
                    ],
                  ),
                ),
                new Row(
                  children: <Widget>[
                    // TODO: Create the bottom navigation bar
                  ],
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}