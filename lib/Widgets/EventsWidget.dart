import 'package:flutter/material.dart';
import 'package:spartansclub/Presentations/ClubEventDetailScreen.dart';

class EventsWidget extends StatelessWidget {
  late final String eventImageUrl;
  late final String eventName;
  late final String eventDate;

  EventsWidget(
      {required this.eventImageUrl,
      required this.eventName,
      required this.eventDate});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ClubEventDetailScreen()));
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          height: 220,
          width: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF222327),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  eventImageUrl,
                  height: 150.0,
                  width: 230.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  eventName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, bottom: 8),
                child: Text(
                  eventDate,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
