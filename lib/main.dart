import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/core/utils/service_locator.dart';
import 'package:warehouse_app/simple_bloc_observer.dart';

import 'warehouse_app.dart';

void main(List<String> args) {
  serviceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(WarehouseApp());
}

class WarehouseApp extends StatelessWidget {
  const WarehouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const WarehouseAppBody();
  }
}
