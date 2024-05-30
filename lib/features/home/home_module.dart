import 'package:flutter_modular/flutter_modular.dart';

import '../../common/extensions/string_ext.dart';
import '../../main_module.dart';
import '../todos/todos_module.dart';
import '../todos/todos_screen.dart';
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
    r.child(
      HomeModuleRoute.main,
      child: (context) => const HomeScreen(),
      transition: TransitionType.noTransition,
      children: [
        ChildRoute(
          HomeModuleRoute.todosScreen,
          child: (context) => const TodosScreen(),
        ),
      ],
    );
    r.module(HomeModuleRoute.todosScreen, module: TodosModule());
    super.routes(r);
  }
}

mixin HomeModuleRoute {
  static const main = '/';
  static const todosScreen = '/todos';

  static const startPath = MainModulePaths.homePath;
  static final todosPath = '$startPath$todosScreen'.toNavigation;
}
