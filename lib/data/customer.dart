import 'dart:typed_data';

import 'package:chat_app_test/data/image_converter.dart';
import 'package:chat_app_test/domain/customer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable(constructor: '_')
class CustomerImpl implements Customer {
  @override
  final String name;

  @override
  @ImageConverter()
  final Uint8List? photo;

  @override
  final String surname;

  @override
  final bool isCustomer;

  const CustomerImpl._(this.name, this.photo, this.surname, this.isCustomer);

  factory CustomerImpl({required name, photo, required surname}) =>
      CustomerImpl._(name, photo, surname, true);

  factory CustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$CustomerImplFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerImplToJson(this);
}

class CustomerConverter
    implements JsonConverter<Customer, Map<String, dynamic>> {
  const CustomerConverter();

  @override
  Customer fromJson(Map<String, dynamic> json) {
    return CustomerImpl.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(Customer object) {
    return (object as CustomerImpl).toJson();
  }
}
