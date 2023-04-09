import 'package:chat_app_test/domain/conversation.dart';
import 'package:chat_app_test/view/conversation_list/customer_name.dart';
import 'package:chat_app_test/view/conversation_list/customer_photo.dart';
import 'package:chat_app_test/view/conversation_list/last_message.dart';
import 'package:chat_app_test/view/conversation_list/last_message_time.dart';
import 'package:chat_app_test/view/conversation_list/messenger_view.dart';
import 'package:chat_app_test/view/conversation_list/tag_list.dart';
import 'package:chat_app_test/view/conversation_list/unread_count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/conversation_bloc.dart';

class ConversationView extends StatelessWidget {
  final Conversation conversation;
  final bool selected;

  ConversationView(this.conversation, this.selected);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => BlocProvider.of<ConversationBloc>(context)
          .add(ConversationEvent.select(conversation)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 90),
        child: Container(
          padding:
              const EdgeInsets.only(left: 28, top: 14, right: 28, bottom: 14),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            color: selected ? Theme.of(context).primaryColor : null,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CustomerPhoto(conversation.customer),
                  MessengerView(conversation.messenger),
                ],
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        LastMessageTime(conversation.lastMessage),
                        UnreadCount(conversation.unreadCount),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomerName(conversation.customer),
                          TagList(conversation.tags),
                          LastMessage(conversation.lastMessage,
                              conversation.unreadCount > 0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
