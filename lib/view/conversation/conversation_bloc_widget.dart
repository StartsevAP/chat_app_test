import 'package:chat_app_test/bloc/conversation_bloc.dart';
import 'package:chat_app_test/bloc/messages_bloc.dart';
import 'package:chat_app_test/domain/message_repository.dart';
import 'package:chat_app_test/view/conversation/conversation_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/user.dart';

class ConversationBlocWidget extends StatelessWidget {
  final User user;

  ConversationBlocWidget(this.user);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConversationBloc, ConversationState>(
      builder: (context, state) => state.when(
        initial: SizedBox.shrink,
        loaded: (conversations, selected) {
          if (selected == null) {
            return const SizedBox.shrink();
          } else {
            return BlocProvider<MessagesBloc>(
              key: ValueKey(selected),
              create: (context) => MessagesBloc(selected, user,
                  RepositoryProvider.of<MessageRepository>(context))
                ..add(const MessagesEvent.load())
                ..add(const MessagesEvent.startListening()),
              child: ConversationView(selected.customer),
            );
          }
        },
      ),
    );
  }
}
