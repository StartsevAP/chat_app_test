// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserImpl _$UserImplFromJson(Map<String, dynamic> json) => UserImpl._(
      json['name'] as String,
      _$JsonConverterFromJson<Map<String, dynamic>, Uint8List>(
          json['photo'], const ImageConverter().fromJson),
      json['isCustomer'] as bool,
    );

Map<String, dynamic> _$UserImplToJson(UserImpl instance) => <String, dynamic>{
      'name': instance.name,
      'photo': _$JsonConverterToJson<Map<String, dynamic>, Uint8List>(
          instance.photo, const ImageConverter().toJson),
      'isCustomer': instance.isCustomer,
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
