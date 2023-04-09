import 'package:chat_app_test/data/customer.dart';
import 'package:chat_app_test/data/user.dart';
import 'package:chat_app_test/domain/interlocutor.dart';
import 'package:json_annotation/json_annotation.dart';

class InterlocutorConverter
    implements JsonConverter<Interlocutor, Map<String, dynamic>> {
  const InterlocutorConverter();

  @override
  Interlocutor fromJson(Map<String, dynamic> json) {
    if (isCustomer(json)) {
      try {
        return CustomerImpl.fromJson(json);
      } catch (e) {
        throw Exception('not customer');
      }
    } else {
      try {
        return UserImpl.fromJson(json);
      } catch (e) {
        throw Exception('not user');
      }
    }
  }

  @override
  Map<String, dynamic> toJson(Interlocutor object) {
    if (object is CustomerImpl) {
      return object.toJson();
    } else if (object is UserImpl) {
      return object.toJson();
    } else {
      throw Exception('WrongType');
    }
  }

  bool isCustomer(Map<String, dynamic> json) {
    return json.containsKey('isCustomer') && (json['isCustomer'] as bool);
  }
}
