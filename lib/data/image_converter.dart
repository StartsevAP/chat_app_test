import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

class ImageConverter implements JsonConverter<Uint8List, Map<String, dynamic>> {
  static const valueKey = 'encoded';

  const ImageConverter();

  @override
  Uint8List fromJson(Map<String, dynamic> json) {
    final encoded = json[valueKey];
    return base64Decode(encoded);
  }

  @override
  Map<String, dynamic> toJson(Uint8List object) {
    return {valueKey: base64Encode(object)};
  }
}
