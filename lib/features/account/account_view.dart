import 'package:flutter/material.dart';

import '../../common/widgets/app_bar/custom_app_bar.dart';
import '../../common/widgets/app_bottom_nav_bar/app_bottom_nav_bar.dart';
import '../../common/widgets/app_scaffold/app_scaffold.dart';
import '../../generated/locale_keys.g.dart';

class AccountView extends StatelessWidget {
  const AccountView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const pageIndex = 2;

    return AppScaffold(
      appBar: const CustomAppBar(
        title: LocaleKeys.appTitle,
        centerTitle: true,
      ),
      bottomNavigationBar:
          const AppBottomNavigationBar(currentIndex: pageIndex),
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
