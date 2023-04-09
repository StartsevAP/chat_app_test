part of 'conversation_bloc.dart';

@freezed
class ConversationEvent with _$ConversationEvent {
  const factory ConversationEvent.load() = _Load;

  const factory ConversationEvent.update(List<Conversation> conversations) =
      _Update;

  const factory ConversationEvent.startWatch(
    Stream<Event> onFocus,
    Stream<Event> onBlur,
  ) = _StartWatch;

  const factory ConversationEvent.select(Conversation conversation) = _Select;
}
