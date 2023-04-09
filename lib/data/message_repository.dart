import 'dart:async';
import 'dart:convert';

import 'package:chat_app_test/data/customer.dart';
import 'package:chat_app_test/data/message.dart';
import 'package:chat_app_test/data/message_content.dart';
import 'package:chat_app_test/domain/conversation.dart';
import 'package:chat_app_test/domain/interlocutor.dart';
import 'package:chat_app_test/domain/message.dart';
import 'package:chat_app_test/domain/message_repository.dart';
import 'package:mutex/mutex.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'user.dart';

class MessageRepositoryImpl implements MessageRepository {
  static const spKey = 'messages';

  static const assetFile = 'assets/messages.json';

  List<Message>? _messages;

  StreamController<List<Message>>? _controller;

  final _syncLock = Mutex();

  MessageRepositoryImpl();

  @override
  Future<List<Message>> getMessages(
      {required Conversation conversation,
      required int count,
      int offset = 0}) async {
    if (_messages == null || _messages!.isEmpty) {
      await _loadFromStorage();
    }
    return _messages!
        .where((element) => element.conversationId == conversation.id)
        .skip(offset)
        .take(count)
        .toList();
  }

  @override
  Stream<List<Message>> get newMessages => _getController().stream;

  @override
  Future<Message> newTextMessage(
      {required Conversation conversation,
      Message? answerTo,
      required String text,
      required DateTime dateTime,
      required Interlocutor author}) async {
    _syncLock.acquire();
    try {
      final lastId = _messages?.fold(0, (previousValue, element) {
        final id = (element as MessageImpl).id;
        return id > previousValue ? id : previousValue;
      });
      final newMessage = MessageImpl(lastId ?? 0 + 1,
          conversationId: conversation.id,
          content: TextMessageContentImpl.newTextContent(text),
          dateTime: dateTime,
          author: author);
      _messages?.add(newMessage);
      _controller?.add([newMessage]);
      _saveToStorage();
      return newMessage;
    } finally {
      _syncLock.release();
    }
  }

  Future<void> _loadFromStorage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(spKey)) {
      final loaded = prefs.getString(spKey);
      if (loaded != null && loaded.isNotEmpty) {
        _messages = _decodeFromString(loaded);
      }
    }

    if (_messages == null || _messages!.isEmpty) {
      _messages = [
        MessageImpl(
          0,
          conversationId: 0,
          content: TextMessageContentImpl.newTextContent('Здравствуйте'),
          dateTime: DateTime(2023, 4, 8, 17, 30),
          author: CustomerImpl(name: 'Андрей', photo: null, surname: '1'),
        ),
        MessageImpl(
          1,
          conversationId: 0,
          content: TextMessageContentImpl.newTextContent('Здравствуйте'),
          dateTime: DateTime(2023, 4, 8, 17, 35),
          author: UserImpl.fake(),
        ),
        MessageImpl(
          2,
          conversationId: 0,
          content: TextMessageContentImpl.newTextContent('Есть вопрос'),
          dateTime: DateTime(2023, 4, 8, 17, 45),
          author: CustomerImpl(name: 'Андрей', photo: null, surname: '1'),
        ),
        MessageImpl(
          3,
          conversationId: 0,
          content: TextMessageContentImpl.newTextContent('Здравствуйте'),
          dateTime: DateTime(2023, 4, 8, 17, 30),
          author: CustomerImpl(name: 'Вася', photo: null, surname: '2'),
        ),
        MessageImpl(
          4,
          conversationId: 0,
          content: TextMessageContentImpl.newTextContent('Здравствуйте'),
          dateTime: DateTime(2023, 4, 8, 17, 35),
          author: UserImpl.fake(),
        ),
        MessageImpl(
          5,
          conversationId: 0,
          content: TextMessageContentImpl.newTextContent('Есть вопрос'),
          dateTime: DateTime(2023, 4, 8, 17, 45),
          author: CustomerImpl(name: 'Вася', photo: null, surname: '2'),
        ),
      ];
    }
  }

  Future<void> _saveToStorage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        spKey,
        jsonEncode(
            _messages?.map((e) => (e as MessageImpl).toJson()).toList()));
  }

  List<Message> _decodeFromString(String value) {
    return (json.decode(value) as List)
        .map((e) => MessageImpl.fromJson(e))
        .toList();
  }

  StreamController<List<Message>> _getController() =>
      _controller ??= StreamController<List<Message>>.broadcast();

  @override
  Future<void> stopFetching() async {
    _controller?.close();
  }
}
