part of 'conversation_bloc.dart';

@freezed
class ConversationState with _$ConversationState {
  const factory ConversationState.initial() = _Initial;

  const factory ConversationState.loaded(
      List<Conversation> conversations, Conversation? selected) = _Loaded;
}
