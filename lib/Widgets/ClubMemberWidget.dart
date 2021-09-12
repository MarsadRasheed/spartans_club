import 'package:flutter/material.dart';

class ClubMemberWidget extends StatelessWidget {
  late final String imageUrl;
  late final String userName;
  late final String duration;

  ClubMemberWidget(
      {required this.imageUrl, required this.userName, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.network(
                    imageUrl,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    userName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    duration,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 10,
          )
        ],
      ),
    );
  }
}
