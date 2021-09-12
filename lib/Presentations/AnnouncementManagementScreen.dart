import 'package:flutter/material.dart';
import 'package:spartansclub/Widgets/AnnouncementManagementWidget.dart';

class AnnouncementManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Announcement Management",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnnouncementManagementWidget(),
            AnnouncementManagementWidget(),
            AnnouncementManagementWidget(),
          ],
        ),
      ),
    );
  }
}
