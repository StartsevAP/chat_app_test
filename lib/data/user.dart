import 'dart:typed_data';

import 'package:chat_app_test/data/image_converter.dart';
import 'package:chat_app_test/domain/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(constructor: '_')
class UserImpl implements User {
  @override
  final String name;

  @override
  @ImageConverter()
  final Uint8List? photo;

  @override
  final bool isCustomer;

  const UserImpl._(this.name, this.photo, this.isCustomer);

  factory UserImpl.fake() => const UserImpl._('asd', null, false);

  factory UserImpl.fromJson(Map<String, dynamic> json) =>
      _$UserImplFromJson(json);

  Map<String, dynamic> toJson() => _$UserImplToJson(this);
}
