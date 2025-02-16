import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/locale_keys.g.dart';
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
          default:
            Modular.to.navigate(MainModulePaths.homePath);
            break;
        }
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(Icons.list_outlined),
          label: LocaleKeys.appTitle.tr(),
          activeIcon: Icon(Icons.list, size: 28.r),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.search_outlined),
          label: LocaleKeys.search.tr(),
          activeIcon: Icon(Icons.search, size: 28.r),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person_outlined),
          label: LocaleKeys.account.tr(),
          activeIcon: Icon(Icons.person, size: 28.r),
        ),
      ],
      selectedFontSize: 16,
      unselectedFontSize: 14,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Colors.black,
    );
  }
}
