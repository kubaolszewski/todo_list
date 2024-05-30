import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../common/widgets/app_bar/custom_app_bar.dart';
import '../../common/widgets/app_scaffold/app_scaffold.dart';
import '../../generated/locale_keys.g.dart';
import 'home_module.dart';

class HomeView extends HookWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    return AppScaffold(
        appBar: const CustomAppBar(
          title: LocaleKeys.appTitle,
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex.value,
          onTap: (newIndex) {
            currentIndex.value == newIndex;
            switch (currentIndex.value) {
              case 0:
                Modular.to.navigate(HomeModuleRoute.todosPath);
                break;
              case 1:
              case 2:
            }
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.list_outlined), label: 'Todos'),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: 'Account'),
          ],
        ),
        child: const RouterOutlet());
  }
}
