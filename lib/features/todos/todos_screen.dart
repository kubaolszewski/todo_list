import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/app_scaffold/app_scaffold.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      child: Center(
        child: Text('test string'),
      ),
    );
  }
}
