import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_app_test/domain/message_repository.dart';
import 'package:chat_app_test/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/conversation.dart';
import '../domain/message.dart';

part 'messages_bloc.freezed.dart';

part 'messages_event.dart';

part 'messages_state.dart';

class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  final Conversation _conversation;
  final User _user;
  final MessageRepository _messageRepository;
  StreamSubscription? _streamSubscription;

  MessagesBloc(this._conversation, this._user, this._messageRepository)
      : super(const MessagesState.initial()) {
    on<_Load>((event, emit) async {
      final messages = await _messageRepository.getMessages(
          conversation: _conversation, count: 10);
      emit(MessagesState.loaded(messages));
    });

    on<_StartListening>((event, emit) {
      _streamSubscription = _messageRepository.newMessages.listen((event) {
        if (event
            .any((element) => element.conversationId == _conversation.id)) {
          add(const MessagesEvent.load());
        }
      });
    });

    on<_AddMessage>((event, emit) async {
      await _messageRepository.newTextMessage(
          conversation: _conversation,
          text: event.text,
          dateTime: DateTime.now(),
          author: _user);
    });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    _streamSubscription = null;
    return super.close();
  }
}
