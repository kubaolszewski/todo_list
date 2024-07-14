import 'package:flutter_modular/flutter_modular.dart';

import 'cubit/home_cubit.dart';
import 'home_screen.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<HomeCubit>(HomeCubit.new);
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(HomeModuleRoute.homeScreen, child: (context) => const HomeScreen());
    super.routes(r);
  }
}

mixin HomeModuleRoute {
  static final homeScreen = Modular.initialRoute;
}
