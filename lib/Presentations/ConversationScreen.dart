import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spartansclub/Widgets/ReceivedMessageScreen.dart';
import 'package:spartansclub/Widgets/SentMessageScreen.dart';

class ConversationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peter"),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 75),
            child: ListView(
              children: [
                ReceivedMessageScreen("Hi, this is Luis!"),
                ReceivedMessageScreen("Whats going on?"),
                SentMessageScreen(
                    "hello Luis, all good, whats about you, is everything alright ?"),
                ReceivedMessageScreen("Hi, this is Luis!"),
                ReceivedMessageScreen("Whats going on?"),
                SentMessageScreen(
                    "hello Luis, all good, whats about you, is everything alright ?"),
                ReceivedMessageScreen("Hi, this is Luis!"),
                ReceivedMessageScreen("Whats going on?"),
                SentMessageScreen(
                    "hello Luis, all good, whats about you, is everything alright ?"),
                ReceivedMessageScreen("Hi, this is Luis!"),
                ReceivedMessageScreen("Whats going on?"),
                SentMessageScreen(
                    "hello Luis, all good, whats about you, is everything alright ?"),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff292929),
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.only(left: 10, bottom: 8, top: 8),
              height: 50,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Message...", border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    backgroundColor: Color(0xff292929),
                    elevation: 0,
                    onPressed: () {},
                    child: Icon(FontAwesomeIcons.telegramPlane,
                        color: Colors.white, size: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
