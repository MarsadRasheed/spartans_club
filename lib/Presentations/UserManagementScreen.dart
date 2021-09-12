import 'package:flutter/material.dart';
import 'package:spartansclub/Presentations/InviteUserScreen.dart';
import 'package:spartansclub/Presentations/NotifyUsersScreen.dart';
import 'package:spartansclub/Presentations/RegistrationRequestsScreen.dart';
import 'package:spartansclub/Presentations/SuspendedUsersScreen.dart';

class UserManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Management"),
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InviteUserScreen()));
                  },
                  title: Text(
                    "Invite User",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Divider(
                    height: 5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationRequestScreen()));
                  },
                  title: Text(
                    "Registration requests",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Divider(
                    height: 5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SuspendedUsersScreen()));
                  },
                  title: Text(
                    "Suspended users",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Divider(
                    height: 5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotifyUsersScreen()));
                  },
                  title: Text(
                    "Notify users",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Divider(
                    height: 5,
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
