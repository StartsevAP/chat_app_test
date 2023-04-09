import 'package:chat_app_test/domain/message.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageDate extends StatelessWidget {
  final Message message;

  DateFormat dateFormat = DateFormat("HH:mm");

  MessageDate(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.4),
      ),
      padding: const EdgeInsets.all(8),
      child: Text(
        dateFormat.format(message.dateTime),
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: const Color.fromRGBO(255, 255, 255, 1)),
      ),
    );
  }
}
