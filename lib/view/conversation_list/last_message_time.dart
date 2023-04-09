import 'package:chat_app_test/domain/message.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LastMessageTime extends StatelessWidget {
  final Message message;

  DateFormat dateFormat = DateFormat("HH:mm");

  LastMessageTime(this.message);

  @override
  Widget build(BuildContext context) {
    return Text(
      dateFormat.format(message.dateTime),
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
