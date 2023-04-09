import 'package:chat_app_test/domain/messenger.dart';
import 'package:flutter/material.dart';

class MessengerView extends StatelessWidget {
  final Messenger messenger;

  const MessengerView(this.messenger);

  @override
  Widget build(BuildContext context) {
    switch (messenger) {
      case Messenger.whatsUp:
        return Image.asset('assets/WhatsApp.png');

      case Messenger.vk:
        return Image.asset('assets/Vkontakte.png');

      case Messenger.avito:
        return Image.asset('assets/Avito.png');
    }
  }
}
