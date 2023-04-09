// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextMessageContentImpl _$TextMessageContentImplFromJson(
        Map<String, dynamic> json) =>
    TextMessageContentImpl._(
      json['text'] as String?,
      (json['images'] as List<dynamic>)
          .map(
              (e) => const ImageConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      $enumDecode(_$MessageTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$TextMessageContentImplToJson(
        TextMessageContentImpl instance) =>
    <String, dynamic>{
      'images': instance.images.map(const ImageConverter().toJson).toList(),
      'text': instance.text,
      'type': _$MessageTypeEnumMap[instance.type]!,
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 0,
};
