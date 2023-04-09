import 'package:chat_app_test/domain/tag.dart';
import 'package:flutter/material.dart';

class TagView extends StatelessWidget {
  final Tag tag;

  TagView(this.tag);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      height: 15,
      width: 48,
      child: Text(
        tag.name,
        style: Theme.of(context).textTheme.labelMedium,
        overflow: TextOverflow.clip,
      ),
    );
  }
}
