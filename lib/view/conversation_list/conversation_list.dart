import 'dart:html';

import 'package:chat_app_test/bloc/conversation_bloc.dart';
import 'package:chat_app_test/view/conversation_list/conversation_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ConversationBloc>(context)
        .add(ConversationEvent.startWatch(window.onFocus, window.onBlur));
    return BlocBuilder<ConversationBloc, ConversationState>(
      builder: (context, state) => state.when(
        initial: () => const Center(
          child: CircularProgressIndicator(),
        ),
        loaded: (conversations, selected) => ListView.separated(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => ConversationView(
              conversations[index], conversations[index].id == selected?.id),
          itemCount: conversations.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 8,
          ),
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
