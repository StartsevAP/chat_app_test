import 'dart:typed_data';

abstract class Interlocutor{
  String get name;

  bool get isCustomer;

  Uint8List? get photo;
}