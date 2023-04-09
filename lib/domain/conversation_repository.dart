import 'conversation.dart';

abstract class ConversationRepository {
  Future<List<Conversation>> getConversations();

  Stream<List<Conversation>> get conversations;

  Future<void> startFetching();

  Future<void> stopFetching();
}
