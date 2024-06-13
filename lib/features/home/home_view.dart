import 'package:flutter/material.dart';

import '../../common/widgets/app_bar/custom_app_bar.dart';
import '../../common/widgets/app_bottom_nav_bar/app_bottom_nav_bar.dart';
import '../../common/widgets/app_scaffold/app_scaffold.dart';
import '../../generated/locale_keys.g.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const pageIndex = 0;

    return const AppScaffold(
      appBar: CustomAppBar(
        title: LocaleKeys.appTitle,
        centerTitle: true,
      ),
      bottomNavigationBar: AppBottomNavigationBar(currentIndex: pageIndex),
      child: Center(
        child: Text('Test Text'),
      ),
    );
  }
}
