import 'package:chat_app_test/domain/message.dart';
import 'package:chat_app_test/domain/messenger.dart';
import 'package:chat_app_test/domain/tag.dart';

import 'customer.dart';

abstract class Conversation {
  int get id;

  Messenger get messenger;

  List<Tag> get tags;

  Customer get customer;

  int get unreadCount;

  Message get lastMessage;

  bool get isOpened;

  int? get rating;
}
