// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationImpl _$ConversationImplFromJson(Map<String, dynamic> json) =>
    ConversationImpl._(
      json['id'] as int,
      const CustomerConverter()
          .fromJson(json['customer'] as Map<String, dynamic>),
      json['isOpened'] as bool,
      const MessageConverter()
          .fromJson(json['lastMessage'] as Map<String, dynamic>),
      $enumDecode(_$MessengerEnumMap, json['messenger']),
      json['rating'] as int?,
      (json['tags'] as List<dynamic>)
          .map((e) => const TagConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      json['unreadCount'] as int,
    );

Map<String, dynamic> _$ConversationImplToJson(ConversationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': const CustomerConverter().toJson(instance.customer),
      'isOpened': instance.isOpened,
      'lastMessage': const MessageConverter().toJson(instance.lastMessage),
      'messenger': _$MessengerEnumMap[instance.messenger]!,
      'rating': instance.rating,
      'tags': instance.tags.map(const TagConverter().toJson).toList(),
      'unreadCount': instance.unreadCount,
    };

const _$MessengerEnumMap = {
  Messenger.whatsUp: 'whatsUp',
  Messenger.vk: 'vk',
  Messenger.avito: 'avito',
};
