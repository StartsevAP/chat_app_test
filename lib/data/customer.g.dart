// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerImpl _$CustomerImplFromJson(Map<String, dynamic> json) =>
    CustomerImpl._(
      json['name'] as String,
      _$JsonConverterFromJson<Map<String, dynamic>, Uint8List>(
          json['photo'], const ImageConverter().fromJson),
      json['surname'] as String,
      json['isCustomer'] as bool,
    );

Map<String, dynamic> _$CustomerImplToJson(CustomerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': _$JsonConverterToJson<Map<String, dynamic>, Uint8List>(
          instance.photo, const ImageConverter().toJson),
      'surname': instance.surname,
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
