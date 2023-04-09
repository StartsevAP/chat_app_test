import 'package:chat_app_test/domain/conversation.dart';

import 'interlocutor.dart';
import 'message.dart';

abstract class MessageRepository {
  Future<List<Message>> getMessages({
    required Conversation conversation,
    required int count,
    int offset = 0,
  });

  Stream<List<Message>> get newMessages;

  Future<Message> newTextMessage(
      {required Conversation conversation,
      Message? answerTo,
      required String text,
      required DateTime dateTime,
      required Interlocutor author});

  Future<void> stopFetching();
}
