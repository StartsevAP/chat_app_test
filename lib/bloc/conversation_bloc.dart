import 'dart:async';
import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/conversation.dart';
import '../domain/conversation_repository.dart';

part 'conversation_bloc.freezed.dart';

part 'conversation_event.dart';

part 'conversation_state.dart';

class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  final ConversationRepository _conversationRepository;
  StreamSubscription? _conversationStreamSubscription;
  StreamSubscription? _onFocusStreamSubscription;
  StreamSubscription? _onBlurStreamSubscription;
  Conversation? _selected;
  final Map<int, Conversation> _conversations = {};

  ConversationBloc(this._conversationRepository)
      : super(const ConversationState.initial()) {
    on<_Load>((event, emit) async {
      _conversations.clear();
      final loaded = await _conversationRepository.getConversations();
      for (var element in loaded) {
        _conversations[element.id] = element;
      }
      emit(ConversationState.loaded(_conversations.values.toList(), _selected));
    });

    on<_Update>((event, emit) {
      for (var element in event.conversations) {
        _conversations[element.id] = element;
      }
      emit(ConversationState.loaded(_conversations.values.toList(), _selected));
    });

    on<_StartWatch>((event, emit) {
      _conversationStreamSubscription = _conversationRepository.conversations
          .listen((event) => add(ConversationEvent.update(event)));

      _onFocusStreamSubscription = event.onFocus.listen((event) {
        _conversationRepository.startFetching();
      });
      _onBlurStreamSubscription = event.onBlur.listen((event) async {
        await _conversationRepository.stopFetching();
      });
    });

    on<_Select>((event, emit) {
      _selected = event.conversation;
      emit(ConversationState.loaded(_conversations.values.toList(), _selected));
    });
  }

  @override
  Future<void> close() {
    _conversationStreamSubscription?.cancel();
    _conversationStreamSubscription = null;
    _onFocusStreamSubscription?.cancel();
    _onBlurStreamSubscription?.cancel();
    _onBlurStreamSubscription = null;
    _onFocusStreamSubscription = null;

    return super.close();
  }
}
