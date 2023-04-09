import 'package:chat_app_test/data/conversation_repository.dart';
import 'package:chat_app_test/data/message_repository.dart';
import 'package:chat_app_test/data/user.dart';
import 'package:chat_app_test/domain/message_repository.dart';
import 'package:chat_app_test/view/conversation_list/conversation_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/conversation_bloc.dart';
import '../domain/conversation_repository.dart';
import 'conversation/conversation_bloc_widget.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<MessageRepository>(
          create: (context) => MessageRepositoryImpl(),
        ),
        RepositoryProvider<ConversationRepository>(
          create: (context) => ConversationRepositoryImpl(
              RepositoryProvider.of<MessageRepository>(context)),
        ),
      ],
      child: BlocProvider<ConversationBloc>(
        create: (context) => ConversationBloc(RepositoryProvider.of(context))
          ..add(const ConversationEvent.load()),
        child: SizedBox.expand(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: ConversationList(),
              ),
              Expanded(
                flex: 2,
                child: ConversationBlocWidget(
                  UserImpl.fake(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
