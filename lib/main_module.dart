import 'package:flutter_modular/flutter_modular.dart';

import 'common/extensions/string_ext.dart';
import 'common/utils/app_paths/app_paths.dart';
import 'features/account/account_module.dart';
import 'features/home/home_module.dart';
import 'features/search/search_module.dart';

class MainModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(RouteManager r) {
    r.module(MainModulePaths.homeScreen,
        module: HomeModule(), transition: TransitionType.noTransition);
    r.module(MainModulePaths.searchScreen,
        module: SearchModule(), transition: TransitionType.noTransition);
    r.module(MainModulePaths.accountScreen,
        module: AccountModule(), transition: TransitionType.noTransition);
  }
}

mixin MainModulePaths {
  static final homeScreen = AppPaths.home;
  static const searchScreen = AppPaths.search;
  static const accountScreen = AppPaths.account;

  static final homePath = MainModulePaths.homeScreen;
  static final searchPath = '$homePath$searchScreen'.toNavigation;
  static final accountPath = '$homePath$accountScreen'.toNavigation;
}
