import 'package:flutter_modular/flutter_modular.dart';

import '../../common/extensions/string_ext.dart';
import '../home/home_module.dart';
import 'todos_screen.dart';

class TodosModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(TodosModulePaths.todosScreen, child: (context) => const TodosScreen());
  }
}

mixin TodosModulePaths {
  static const main = '/';
  static const todosScreen = '/todos';

  static final startPath = HomeModuleRoute.todosPath;
  static final todosPath = '$startPath$todosScreen'.toNavigation;
}
