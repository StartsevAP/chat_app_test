part of 'messages_bloc.dart';

@freezed
class MessagesEvent with _$MessagesEvent {
  const factory MessagesEvent.load() = _Load;

  const factory MessagesEvent.startListening() = _StartListening;

  const factory MessagesEvent.addMessage(String text) = _AddMessage;
}
