import 'package:chat_app_test/bloc/messages_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewMessagePanel extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: TextField(
          controller: _controller,
          minLines: 1,
          maxLines: 1,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(35),
              ),
            ),
            hintText: 'Начни писать что-нибудь',
          ),
          onSubmitted: (value) {
            BlocProvider.of<MessagesBloc>(context)
                .add(MessagesEvent.addMessage(value));
            _controller.clear();
          }),
    );
  }
}
