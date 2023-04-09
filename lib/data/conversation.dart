import 'package:chat_app_test/data/customer.dart';
import 'package:chat_app_test/data/message.dart';
import 'package:chat_app_test/data/tag.dart';
import 'package:chat_app_test/domain/conversation.dart';
import 'package:chat_app_test/domain/customer.dart';
import 'package:chat_app_test/domain/message.dart';
import 'package:chat_app_test/domain/messenger.dart';
import 'package:chat_app_test/domain/tag.dart';
import 'package:json_annotation/json_annotation.dart';

part 'conversation.g.dart';

@JsonSerializable(constructor: '_')
class ConversationImpl implements Conversation {
  @override
  final int id;

  @override
  @CustomerConverter()
  final Customer customer;

  @override
  final bool isOpened;

  @override
  @MessageConverter()
  final Message lastMessage;

  @override
  final Messenger messenger;

  @override
  final int? rating;

  @override
  @TagConverter()
  final List<Tag> tags;

  @override
  final int unreadCount;

  const ConversationImpl._(
      this.id,
      this.customer,
      this.isOpened,
      this.lastMessage,
      this.messenger,
      this.rating,
      this.tags,
      this.unreadCount);

  factory ConversationImpl(
          {required int id,
          required Customer customer,
          required bool isOpened,
          required Message lastMessage,
          required Messenger messenger,
          int? rating,
          required List<Tag> tags,
          required int unreadCount}) =>
      ConversationImpl._(id, customer, isOpened, lastMessage, messenger, rating,
          tags, unreadCount);

  factory ConversationImpl.fromJson(Map<String, dynamic> json) =>
      _$ConversationImplFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationImplToJson(this);

  ConversationImpl copyWith(
      {required int newUnreadCount, required Message newLastMessage}) {
    return ConversationImpl._(id, customer, isOpened, newLastMessage, messenger,
        rating, tags, newUnreadCount);
  }
}

class ConversationConverter
    implements JsonConverter<Conversation, Map<String, dynamic>> {
  const ConversationConverter();

  @override
  Conversation fromJson(Map<String, dynamic> json) {
    return ConversationImpl.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(Conversation object) {
    return (Conversation as ConversationImpl).toJson();
  }
}
