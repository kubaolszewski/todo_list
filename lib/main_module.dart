import 'package:flutter_modular/flutter_modular.dart';

import 'features/home/home_module.dart';

class MainModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(RouteManager r) {
    r.module(MainModulePaths.homePath, module: HomeModule());
  }
}

mixin MainModulePaths {
  static const homePath = '/';
}
