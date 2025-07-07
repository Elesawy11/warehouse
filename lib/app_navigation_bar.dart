import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar(
      {super.key, required this.navigationShell, required this.items});
  final StatefulNavigationShell navigationShell;
  final List<BottomNavigationBarItem> items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        currentIndex: navigationShell.currentIndex,
        onTap: (value) {
          navigationShell.goBranch(value);
          log('navigation is : $value');
        },
        items: items,
      ),
    );
  }
}
