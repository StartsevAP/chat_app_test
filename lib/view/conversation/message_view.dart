import 'package:chat_app_test/domain/message.dart';
import 'package:chat_app_test/view/conversation/message_images.dart';
import 'package:chat_app_test/view/conversation/message_text.dart';
import 'package:flutter/material.dart';

import 'message_date.dart';
import 'reply_message.dart';

class MessageView extends StatelessWidget {
  final Message message;

  MessageView(this.message);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.author.isCustomer
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: message.author.isCustomer
              ? Theme.of(context).primaryColor
              : Theme.of(context).accentColor,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ReplyMessage(message.answerTo),
                      MessageText(message),
                    ],
                  ),
                ),
                MessageImages(message),
              ],
            ),
            Positioned(
              bottom: 8,
              child: MessageDate(message),
            ),
          ],
        ),
      ),
    );
  }
}
