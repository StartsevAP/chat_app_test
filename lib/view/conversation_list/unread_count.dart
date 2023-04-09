import 'package:flutter/material.dart';

class UnreadCount extends StatelessWidget {
  final int unreadCount;

  UnreadCount(this.unreadCount);

  @override
  Widget build(BuildContext context) {
    if (unreadCount > 0) {
      return Flexible(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Theme.of(context).primaryColor,
          ),
          child: Text(
            unreadCount.toString(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
