import 'package:flutter_modular/flutter_modular.dart';

import '../../common/extensions/string_ext.dart';
import 'cubit/search_cubit.dart';
import 'search_screen.dart';

class SearchModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<SearchCubit>(SearchCubit.new);
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      SearchModuleRoute.searchScreen,
      child: (context) => const SearchScreen(),
    );
    super.routes(r);
  }
}

mixin SearchModuleRoute {
  static final searchScreen = Modular.initialRoute;

  static final searchPath = SearchModuleRoute.searchScreen.toNavigation;
}
