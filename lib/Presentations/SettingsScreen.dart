import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:spartansclub/Presentations/EmailNotificationsScreen.dart';
import 'package:spartansclub/Presentations/PasswordScreen.dart';
import 'package:spartansclub/Presentations/PushNotificationsScreen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Setting"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Notificatios",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Column(
            children: [
              ListTile(
                tileColor: Color(0xFF222329),
                title: Text(
                  "Push Notifications",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PushNotificationsScreen()));
                },
              ),
              Divider(
                height: 3,
                thickness: 2,
              ),
              ListTile(
                tileColor: Color(0xFF222329),
                title: Text(
                  "Email Notifications",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EmailNotificationsScreen()),
                  );
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Account",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Column(
            children: [
              ListTile(
                tileColor: Color(0xFF222329),
                title: Text(
                  "Change Password",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PasswordScreen()),
                  );
                },
              ),
              Divider(
                height: 3,
                thickness: 2,
              ),
              ListTile(
                tileColor: Color(0xFF222329),
                title: Text(
                  "Payments",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
                onTap: () {},
              ),
              Divider(
                height: 3,
                thickness: 2,
              ),
              ListTile(
                tileColor: Color(0xFF222329),
                title: Text(
                  "Disable or delete account",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
                onTap: () {
                  showModalActionSheet(
                      cancelLabel: "Cancel",
                      context: context,
                      title: "Delete or disable account",
                      message:
                          "Are you sure you want to disable or delete your account",
                      actions: [
                        SheetAction(
                          label: "Disable",
                          isDestructiveAction: true,
                        ),
                        SheetAction(
                          label: "Delete",
                          isDestructiveAction: true,
                        ),
                      ]);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
