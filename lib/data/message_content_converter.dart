import 'package:chat_app_test/data/message_content.dart';
import 'package:json_annotation/json_annotation.dart';

import '../domain/message.dart';

class MessageContentConverter
    implements JsonConverter<MessageContent, Map<String, dynamic>> {
  const MessageContentConverter();

  @override
  MessageContent fromJson(Map<String, dynamic> json) {
    final messageType = getMessageType(json);
    switch (messageType) {
      case MessageType.text:
        return TextMessageContentImpl.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(MessageContent object) {
    if (object is TextMessageContentImpl) {
      return object.toJson();
    } else {
      throw Exception('WrongType');
    }
  }

  MessageType getMessageType(Map<String, dynamic> json) {
    switch (json['type']) {
      case 0:
        return MessageType.text;
    }
    throw Exception('Unknown type');
  }
}
