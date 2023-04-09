import 'package:chat_app_test/view/conversation_list/tag_view.dart';
import 'package:flutter/material.dart';

import '../../domain/tag.dart';

class TagList extends StatelessWidget {
  final List<Tag> tagList;

  TagList(this.tagList);

  @override
  Widget build(BuildContext context) {
    if (tagList.isNotEmpty) {
      return SizedBox(
        width: 314,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => TagView(tagList[index]),
          itemCount: tagList.length,
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            width: 8,
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
