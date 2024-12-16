import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../common/utils/app_consts/app_consts.dart';
import '../../common/widgets/app_bar/custom_app_bar.dart';
import '../../common/widgets/app_bottom_nav_bar/app_bottom_nav_bar.dart';
import '../../common/widgets/app_scaffold/app_scaffold.dart';
import '../../generated/locale_keys.g.dart';
import 'add_todo/add_todo_screen.dart';
import 'widgets/home_todos_list_section/home_todos_list_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(
        title: LocaleKeys.appTitle,
      ),
      bottomNavigationBar: const AppBottomNavigationBar(
        currentIndex: AppConsts.homeScreenIndex,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () => Modular.to
            .push(MaterialPageRoute(builder: (context) => AddTodoScreen())),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      child: const HomeTodosListSection(),
    );
  }
}
