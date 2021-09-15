import 'package:flutter/material.dart';
import 'package:spartansclub/Presentations/ConversationScreen.dart';

class DiscussionMessageWidget extends StatelessWidget {
  late final String userName;
  late final String message;
  late final String userImgUrl;
  late final String messageTime;

  DiscussionMessageWidget(
      {required this.userName,
      required this.message,
      required this.userImgUrl,
      required this.messageTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 16, left: 8, right: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      userImgUrl,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      userName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      messageTime,
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w300,
                          fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              message,
              style: TextStyle(
                  fontWeight: FontWeight.w300, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
