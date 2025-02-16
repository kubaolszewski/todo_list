import 'package:flutter_modular/flutter_modular.dart';

import 'common/extensions/string_ext.dart';
import 'common/utils/app_paths/routing_paths.dart';
import 'di/di_bloc_module.dart';
import 'di/di_data_module.dart';
import 'di/di_network_module.dart';
import 'di/di_repositories_module.dart';
import 'di/di_services_module.dart';
import 'features/account/account_module.dart';
import 'features/home/home_module.dart';
import 'features/search/search_module.dart';

class MainModule extends Module {
  @override
  List<Module> get imports => [
        DiBlocModule(),
        DIDataModule(),
        DiNetworkModule(),
        DiRepositoriesModule(),
        DiServicesModule(),
      ];

  @override
  void routes(RouteManager r) {
    r.module(MainModulePaths.homeScreen,
        module: HomeModule(), transition: TransitionType.noTransition,);
    r.module(MainModulePaths.searchScreen,
        module: SearchModule(), transition: TransitionType.noTransition,);
    r.module(MainModulePaths.accountScreen,
        module: AccountModule(), transition: TransitionType.noTransition,);
  }
}

mixin MainModulePaths {
  static final homeScreen = RoutingPaths.home;
  static const searchScreen = RoutingPaths.search;
  static const accountScreen = RoutingPaths.account;

  static final homePath = MainModulePaths.homeScreen;
  static final searchPath = '$homePath$searchScreen'.toNavigation;
  static final accountPath = '$homePath$accountScreen'.toNavigation;
}
