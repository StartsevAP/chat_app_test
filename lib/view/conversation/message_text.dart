import 'package:chat_app_test/domain/message.dart';
import 'package:flutter/material.dart';

class MessageText extends StatelessWidget {
  final Message message;

  MessageText(this.message);

  @override
  Widget build(BuildContext context) {
    if (message.content.type == MessageType.text &&
        (message.content as TextMessageContent).text != null &&
        (message.content as TextMessageContent).text!.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          (message.content as TextMessageContent).text!,
          style: Theme.of(context).textTheme.bodyMedium,
          maxLines: 10,
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
