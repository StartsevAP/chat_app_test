import 'package:chat_app_test/domain/customer.dart';
import 'package:chat_app_test/view/conversation/customer_name.dart';
import 'package:chat_app_test/view/conversation/customer_photo.dart';
import 'package:flutter/material.dart';

class CustomerView extends StatelessWidget {
  final Customer customer;

  CustomerView(this.customer);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomerPhoto(customer),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: CustomerName(customer),
          ),
        ],
      ),
    );
  }
}
