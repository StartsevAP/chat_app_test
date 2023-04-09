// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageImpl _$MessageImplFromJson(Map<String, dynamic> json) => MessageImpl._(
      json['id'] as int,
      json['conversationId'] as int,
      _$JsonConverterFromJson<Map<String, dynamic>, Message>(
          json['answerTo'], const MessageConverter().fromJson),
      const MessageContentConverter()
          .fromJson(json['content'] as Map<String, dynamic>),
      DateTime.parse(json['dateTime'] as String),
      const InterlocutorConverter()
          .fromJson(json['author'] as Map<String, dynamic>),
      json['isRead'] as bool,
    );

Map<String, dynamic> _$MessageImplToJson(MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conversationId': instance.conversationId,
      'answerTo': _$JsonConverterToJson<Map<String, dynamic>, Message>(
          instance.answerTo, const MessageConverter().toJson),
      'content': const MessageContentConverter().toJson(instance.content),
      'dateTime': instance.dateTime.toIso8601String(),
      'author': const InterlocutorConverter().toJson(instance.author),
      'isRead': instance.isRead,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
