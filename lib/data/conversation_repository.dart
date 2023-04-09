import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:chat_app_test/data/conversation.dart';
import 'package:chat_app_test/data/customer.dart';
import 'package:chat_app_test/data/message.dart';
import 'package:chat_app_test/data/message_content.dart';
import 'package:chat_app_test/data/user.dart';
import 'package:chat_app_test/domain/conversation.dart';
import 'package:chat_app_test/domain/conversation_repository.dart';
import 'package:chat_app_test/domain/message.dart';
import 'package:chat_app_test/domain/message_repository.dart';
import 'package:chat_app_test/domain/messenger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConversationRepositoryImpl implements ConversationRepository {
  final MessageRepository _messageRepository;

  static const spKey = 'conversations';

  static const assetFile = 'assets/conversations.json';

  Map<int, Conversation>? _conversations;

  StreamController<List<Conversation>>? _controller;

  Timer? _timer;

  ConversationRepositoryImpl(this._messageRepository);

  @override
  Future<List<Conversation>> getConversations() async {
    if (_conversations == null || _conversations!.isNotEmpty) {
      await _loadFromStorage();
    }
    return _conversations!.values.toList();
  }

  @override
  Stream<List<Conversation>> get conversations => _getController().stream;

  Future<void> _loadFromStorage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(spKey)) {
      final loaded = prefs.getString(spKey);
      if (loaded != null && loaded.isNotEmpty) {
        _conversations = _decodeFromString(loaded);
      }
    }

    if (_conversations == null || _conversations!.isEmpty) {
      _conversations = {
        0: ConversationImpl(
            id: 0,
            customer: CustomerImpl(name: 'Андрей', photo: null, surname: '1'),
            isOpened: true,
            lastMessage: MessageImpl(0,
                conversationId: 0,
                content: TextMessageContentImpl.newTextContent('123'),
                dateTime: DateTime.now(),
                author:
                    CustomerImpl(name: 'Андрей', photo: null, surname: '1')),
            messenger: Messenger.vk,
            tags: [],
            unreadCount: 0),
        1: ConversationImpl(
            id: 1,
            customer: CustomerImpl(name: 'Вася', photo: null, surname: '2'),
            isOpened: true,
            lastMessage: MessageImpl(4,
                conversationId: 1,
                content: TextMessageContentImpl.newTextContent('321'),
                dateTime: DateTime.now(),
                author: CustomerImpl(name: 'Вася', photo: null, surname: '2')),
            messenger: Messenger.vk,
            tags: [],
            unreadCount: 1),
      };
    }
  }

  Future<void> _saveToStorage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        spKey,
        jsonEncode(_conversations?.values
            .map((e) => (e as ConversationImpl).toJson())
            .toList()));
  }

  Map<int, Conversation> _decodeFromString(String value) {
    final map = <int, Conversation>{};
    for (var element in (json.decode(value) as List)) {
      final conversation = ConversationImpl.fromJson(element);
      map[conversation.id] = conversation;
    }
    return map;
  }

  StreamController<List<Conversation>> _getController() =>
      _controller ??= StreamController<List<Conversation>>.broadcast();

  @override
  Future<void> stopFetching() async {
    _timer?.cancel();
    _timer = null;
  }

  Future<void> _updateConversation(Message message) async {
    final conversationId = message.conversationId;
    final oldConversation = _conversations?[conversationId];
    if (oldConversation != null) {
      var conversation = (oldConversation as ConversationImpl)
          .copyWith(newUnreadCount: 1, newLastMessage: message);
      _conversations?[conversationId] = conversation;
      await _saveToStorage();
      _controller?.add([conversation]);
    }
  }

  @override
  Future<void> startFetching() async {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) async {
      final conversation =
          _conversations![Random().nextInt(_conversations!.values.length)];
      final texts = [
        'Здравствуйте',
        'Спасибо',
        'Есть вопрос',
        'Помогите',
        'Благодарю за обращение'
      ];

      final authors = [
        conversation!.customer,
        UserImpl.fake(),
      ];
      final message = await _messageRepository.newTextMessage(
          conversation: conversation,
          text: texts[Random().nextInt(texts.length)],
          dateTime: DateTime.now(),
          author: authors[Random().nextInt(authors.length)]);
      await _updateConversation(message);
    });
  }
}
