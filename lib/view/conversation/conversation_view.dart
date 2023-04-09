import 'package:chat_app_test/domain/customer.dart';
import 'package:flutter/material.dart';

import 'message_list.dart';
import 'new_message_panel.dart';
import 'panel.dart';

class ConversationView extends StatelessWidget {
  final Customer customer;

  ConversationView(this.customer);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalDirection: VerticalDirection.up,
      children: [
        NewMessagePanel(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Panel(customer),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.only(
                        left: 38, right: 39, top: 20, bottom: 20),
                    child: MessageList()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
