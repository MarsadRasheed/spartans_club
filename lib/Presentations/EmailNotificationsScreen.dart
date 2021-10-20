import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class EmailNotificationsScreen extends StatefulWidget {
  @override
  _EmailNotificationsScreen createState() => _EmailNotificationsScreen();
}

class _EmailNotificationsScreen extends State<EmailNotificationsScreen> {
  bool allow = true;
  bool badges = true;

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Email Notifications",style: TextStyle(fontWeight: FontWeight.w400),),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  allow = !allow;
                });
              },
              child: Container(
                padding: EdgeInsets.all(12),
                color: Color(0xFF222329),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Text("Allow Notifications")),
                    FlutterSwitch(
                      width: 51,
                      height: 31,
                      value: allow,
                      onToggle: (bool value) {
                        setState(() {
                          allow = value;
                        });
                      },
                      toggleColor: Colors.white,
                      activeColor: Colors.deepOrange.shade600,
                      inactiveColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              tileColor: Color(0xFF222329),
              title: Text(
                "Sounds",
              ),
              trailing: Container(
                height: 20,
                width: 50,
                child: Row(
                  children: [
                    Text(
                      "Drig",
                      style: TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 3,
              thickness: 2,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  badges = !badges;
                });
              },
              child: Container(
                padding: EdgeInsets.all(12),
                color: Color(0xFF222329),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Text("Badges")),
                    FlutterSwitch(
                      width: 51,
                      height: 31,
                      value: badges,
                      onToggle: (bool value) {
                        setState(() {
                          badges = value;
                        });
                      },
                      toggleColor: Colors.white,
                      activeColor: Colors.deepOrange.shade600,
                      inactiveColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16),
              child: Text(
                'Options',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ListTile(
              tileColor: Color(0xFF222329),
              title: Text(
                "Show Previews",
              ),
              trailing: Container(
                height: 20,
                width: 175,
                child: Row(
                  children: [
                    Text(
                      "When Unlocked (Default)",
                      style: TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
