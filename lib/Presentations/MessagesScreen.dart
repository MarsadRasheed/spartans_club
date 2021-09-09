import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spartansclub/Widgets/MessageInfoWidget.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  int count = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
      ),
      body: count == 0
          ? Center(
              child: Text(
                "You don't have any messages yet.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                ),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                height: double.maxFinite,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    MessageInfoWidget(
                      userImgUrl:
                          "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
                      lastMessage: "Hey Whats up?",
                      lastMessageTime: "8:40 AM",
                      userName: "Marcus",
                    ),
                    MessageInfoWidget(
                      userImgUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUOMhspvJbW2JQRfxXdtr9xllbwly8nDG1N_9VRX4mI1UZCz3zgHC4klZirUE-23vrlqc&usqp=CAU",
                      lastMessage: "Are you interested ?",
                      lastMessageTime: "3:00 PM",
                      userName: "Luis",
                    ),
                    MessageInfoWidget(
                      userImgUrl:
                          "https://st3.depositphotos.com/12985790/i/600/depositphotos_157947226-stock-photo-man-looking-at-camera.jpg",
                      lastMessage: "Are you interested ?",
                      lastMessageTime: "3:00 PM",
                      userName: "George",
                    ),
                    MessageInfoWidget(
                      userImgUrl:
                          "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
                      lastMessage: "Thanks!",
                      lastMessageTime: "5:36 AM",
                      userName: "Alexander",
                    ),
                    MessageInfoWidget(
                      userImgUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUOMhspvJbW2JQRfxXdtr9xllbwly8nDG1N_9VRX4mI1UZCz3zgHC4klZirUE-23vrlqc&usqp=CAU",
                      lastMessage: "Are you interested? Please do let us know as soon as possible.",
                      lastMessageTime: "3:53 PM",
                      userName: "Peter",
                    ),
                    MessageInfoWidget(
                      userImgUrl:
                          "https://st3.depositphotos.com/12985790/i/600/depositphotos_157947226-stock-photo-man-looking-at-camera.jpg",
                      lastMessage: "Alright Sir ?",
                      lastMessageTime: "2:08 PM",
                      userName: "Inke",
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
