import 'package:flutter/material.dart';
import 'package:spartansclub/Presentations/GuestRegistrationScreen.dart';
import 'package:spartansclub/Presentations/LoginScreen.dart';
import 'package:spartansclub/Presentations/RegistrationScreen1.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              "images/logo.png",
              height: 200,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 16, bottom: 8, left: 16, right: 16),
                  child: Text(
                    "Welcome to Spartans Club",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 8, bottom: 16, left: 16, right: 16),
                  child: Text(
                    "Join the club and get access to club offers, events and spartans community",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red.shade700,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text("Log in"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistrationScreen1()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade600,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text("Join Club"),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GuestRegistrationScreen()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Continue as a guest",
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
