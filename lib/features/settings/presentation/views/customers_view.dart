import 'package:flutter/material.dart';
import 'package:warehouse_app/core/utils/styles.dart';

class CustomersView extends StatelessWidget {
  const CustomersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Customers',
          style: Styles.titleStyle,
        ),
      ),
    );
  }
}
