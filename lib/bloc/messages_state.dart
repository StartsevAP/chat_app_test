part of 'messages_bloc.dart';

@freezed
class MessagesState with _$MessagesState {
  const factory MessagesState.initial() = _Initial;

  const factory MessagesState.loaded(List<Message> messages) = _Loaded;
}
