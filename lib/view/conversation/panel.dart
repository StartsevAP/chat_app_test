import 'package:chat_app_test/domain/customer.dart';
import 'package:flutter/material.dart';

import 'customer_view.dart';

class Panel extends StatelessWidget {
  final Customer customer;

  Panel(this.customer);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CustomerView(customer),
    );
  }
}
