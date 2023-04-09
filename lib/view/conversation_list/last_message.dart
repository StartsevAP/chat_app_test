import 'package:chat_app_test/domain/message.dart';
import 'package:flutter/material.dart';

class LastMessage extends StatelessWidget {
  final Message message;
  final bool unread;

  LastMessage(this.message, this.unread);

  @override
  Widget build(BuildContext context) {
    if (message.content.type == MessageType.text) {
      return FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          (message.content as TextMessageContent).text ?? '',
          overflow: TextOverflow.clip,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: unread ? FontWeight.bold : FontWeight.normal),
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
