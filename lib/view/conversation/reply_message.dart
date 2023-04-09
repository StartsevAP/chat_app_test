import 'package:chat_app_test/domain/message.dart';
import 'package:flutter/material.dart';

class ReplyMessage extends StatelessWidget {
  final Message? message;

  ReplyMessage(this.message);

  @override
  Widget build(BuildContext context) {
    if (message == null) {
      return const SizedBox.shrink();
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const VerticalDivider(
            width: 2,
            thickness: 0.75,
            color: Colors.black,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(message!.author.name),
              Text((message!.content as TextMessageContent).text ?? ''),
            ],
          ),
        ],
      );
    }
  }
}
