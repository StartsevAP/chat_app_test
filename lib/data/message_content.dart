import 'dart:typed_data';

import 'package:chat_app_test/data/image_converter.dart';
import 'package:json_annotation/json_annotation.dart';

import '../domain/message.dart';

part 'message_content.g.dart';

@JsonSerializable(constructor: '_')
class TextMessageContentImpl implements TextMessageContent {
  @override
  @ImageConverter()
  final List<Uint8List> images;

  @override
  final String? text;

  @override
  final MessageType type;

  const TextMessageContentImpl._(this.text, this.images, this.type);

  factory TextMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$TextMessageContentImplFromJson(json);

  factory TextMessageContentImpl.newTextContent(String text) =>
      TextMessageContentImpl._(text, [], MessageType.text);

  factory TextMessageContentImpl.newTextWithImagesContent(
          List<Uint8List> images, String text) =>
      TextMessageContentImpl._(text, images, MessageType.text);

  factory TextMessageContentImpl.newImagesContent(List<Uint8List> images) =>
      TextMessageContentImpl._(null, images, MessageType.text);

  Map<String, dynamic> toJson() => _$TextMessageContentImplToJson(this);
}
