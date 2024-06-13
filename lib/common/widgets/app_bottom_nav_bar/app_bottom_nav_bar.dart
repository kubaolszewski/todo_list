import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../main_module.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (newIndex) {
        switch (newIndex) {
          case 0:
            Modular.to.navigate(MainModulePaths.homePath);
            break;
          case 1:
            Modular.to.navigate(MainModulePaths.searchPath);
            break;
          case 2:
            Modular.to.navigate(MainModulePaths.accountPath);
            break;
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined), label: 'Todos'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined), label: 'Account'),
      ],
    );
  }
}
