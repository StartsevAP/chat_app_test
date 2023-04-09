import 'package:chat_app_test/data/conversation.dart';
import 'package:chat_app_test/data/message_content_converter.dart';
import 'package:chat_app_test/domain/interlocutor.dart';
import 'package:chat_app_test/domain/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'interlocutor_converter.dart';

part 'message.g.dart';

@JsonSerializable(constructor: '_')
class MessageImpl implements Message {
  final int id;

  @override
  final int conversationId;

  @override
  @MessageConverter()
  final Message? answerTo;

  @override
  @MessageContentConverter()
  final MessageContent content;

  @override
  final DateTime dateTime;

  @InterlocutorConverter()
  @override
  final Interlocutor author;

  @override
  final bool isRead;

  const MessageImpl._(this.id, this.conversationId, this.answerTo, this.content,
      this.dateTime, this.author, this.isRead);

  factory MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$MessageImplFromJson(json);

  factory MessageImpl(int id,
          {required int conversationId,
          Message? answerTo,
          required MessageContent content,
          required DateTime dateTime,
          required Interlocutor author}) =>
      MessageImpl._(
          id, conversationId, answerTo, content, dateTime, author, false);

  Map<String, dynamic> toJson() => _$MessageImplToJson(this);
}

class MessageConverter implements JsonConverter<Message, Map<String, dynamic>> {
  const MessageConverter();

  @override
  Message fromJson(Map<String, dynamic> json) {
    return MessageImpl.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(Message object) {
    return (object as MessageImpl).toJson();
  }
}
