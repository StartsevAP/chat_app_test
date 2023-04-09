import 'package:chat_app_test/domain/message.dart';
import 'package:flutter/material.dart';

class MessageImages extends StatelessWidget {
  final Message message;

  MessageImages(this.message);

  @override
  Widget build(BuildContext context) {
    if (message.content.type == MessageType.text &&
        (message.content as TextMessageContent).images.isNotEmpty) {
      return ListView.builder(
        itemBuilder: (context, index) =>
            Image.memory((message.content as TextMessageContent).images[index]),
        scrollDirection: Axis.vertical,
        itemCount: (message.content as TextMessageContent).images.length,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
