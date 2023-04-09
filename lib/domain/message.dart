import 'dart:typed_data';

import 'package:chat_app_test/domain/interlocutor.dart';
import 'package:json_annotation/json_annotation.dart';

abstract class Message {
  int get conversationId;

  Message? get answerTo;

  MessageContent get content;

  DateTime get dateTime;

  Interlocutor get author;

  bool get isRead;
}

@JsonEnum()
enum MessageType {
  @JsonValue(0)
  text,
}

abstract class MessageContent {
  MessageType get type;
}

abstract class TextMessageContent implements MessageContent {
  String? get text;

  List<Uint8List> get images;
}
