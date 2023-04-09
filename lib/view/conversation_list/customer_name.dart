import 'package:chat_app_test/domain/customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomerName extends StatelessWidget {
  final Customer customer;

  CustomerName(this.customer);

  @override
  Widget build(BuildContext context) {
    return Text(
      customer.name,
      overflow: TextOverflow.clip,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
