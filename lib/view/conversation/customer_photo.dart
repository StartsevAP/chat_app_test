import 'package:chat_app_test/domain/customer.dart';
import 'package:flutter/material.dart';

class CustomerPhoto extends StatelessWidget {
  final Customer customer;

  CustomerPhoto(this.customer);

  @override
  Widget build(BuildContext context) {
    return customer.photo != null
        ? Image.memory(
            customer.photo!,
            height: 44,
            width: 44,
          )
        : const SizedBox(
            height: 44,
            width: 44,
          );
  }
}
