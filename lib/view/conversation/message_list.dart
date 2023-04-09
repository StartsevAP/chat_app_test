import 'package:chat_app_test/bloc/messages_bloc.dart';
import 'package:chat_app_test/view/conversation/message_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessagesBloc, MessagesState>(
      builder: (context, state) => state.when(
        initial: () => const SizedBox.shrink(),
        loaded: (messages) => ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => MessageView(messages[index]),
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemCount: messages.length),
      ),
    );
  }
}
