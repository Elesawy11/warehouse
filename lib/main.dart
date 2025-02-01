import 'package:flutter/material.dart';

import 'warehouse_app.dart';

void main(List<String> args) {
  runApp(WarehouseApp());
}

class WarehouseApp extends StatelessWidget {
  const WarehouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const WarehouseAppBody();
  }
}
