import 'package:flutter/material.dart';

import '../../../common/widgets/app_bar/custom_app_bar.dart';
import '../../../common/widgets/app_scaffold/app_scaffold.dart';
import '../../../generated/locale_keys.g.dart';
import 'add_todo_view.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(
        title: LocaleKeys.addTodo,
        centerTitle: true,
      ),
      child: AddTodoView(),
    );
  }
}
