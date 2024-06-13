import 'package:flutter_modular/flutter_modular.dart';

import '../../common/extensions/string_ext.dart';
import 'account_screen.dart';
import 'cubit/account_cubit.dart';

class AccountModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<AccountCubit>(AccountCubit.new);
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      AccountModuleRoute.accountScreen,
      child: (context) => const AccountScreen(),
    );
    super.routes(r);
  }
}

mixin AccountModuleRoute {
  static final accountScreen = Modular.initialRoute;

  static final accountPath = AccountModuleRoute.accountScreen.toNavigation;
}
