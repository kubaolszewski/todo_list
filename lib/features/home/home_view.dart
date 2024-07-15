import 'package:flutter/material.dart';

import '../../common/utils/app_consts/app_consts.dart';
import '../../common/widgets/app_bar/custom_app_bar.dart';
import '../../common/widgets/app_bottom_nav_bar/app_bottom_nav_bar.dart';
import '../../common/widgets/app_dialog_body/app_dialog_body.dart';
import '../../common/widgets/app_scaffold/app_scaffold.dart';
import '../../generated/locale_keys.g.dart';
import 'widgets/home_add_todo_dialog/home_add_todo_dialog.dart';
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
          currentIndex: AppConsts.homeScreenIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => const AppDialogBody(
            body: HomeAddTodoDialog(),
          ),
        ),
        child: const Icon(Icons.add),
      ),
      child: const HomeTodosListSection(),
    );
  }
}
