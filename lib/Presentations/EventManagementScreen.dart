import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spartansclub/Widgets/EventManagementWidget.dart';

class EventManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Event Management"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              EventManagementWidget(
                  eventImageUrl:
                      "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2Fyc3xlbnwwfHwwfHw%3D&w=1000&q=80",
                  eventName: "Car Riders",
                  eventDate: "May 30"),
              EventManagementWidget(
                  eventImageUrl:
                      "https://www.globalvillagespace.com/wp-content/uploads/2020/01/Amazing-Affordable-Cars-coming-to-Pakistan-in-2020.jpg",
                  eventName: "Riders meet",
                  eventDate: "Sept 30"),
              EventManagementWidget(
                  eventImageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-w0UycKLf02A-ltyqXRc8COeYPkR9Vdtg0w&usqp=CAU",
                  eventName: "Racing Cars",
                  eventDate: "Nov 30"),
            ],
          ),
        ));
  }
}
