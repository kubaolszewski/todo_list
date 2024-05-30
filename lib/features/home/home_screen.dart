import 'package:flutter/material.dart';

import '../../common/widgets/app_scaffold/app_scaffold.dart';
import 'home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: HomeView(),
    );
  }
}
