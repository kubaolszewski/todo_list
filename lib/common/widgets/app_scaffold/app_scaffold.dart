import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../extensions/context_ext.dart';

final _contentPadding = EdgeInsets.symmetric(horizontal: 16.w);

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.child,
    this.appBar,
    this.bottomNavigationBar,
    this.padding,
    this.resizeToAvoidBottomInset = false,
    this.floatingActionButton,
    this.backgroundColor,
  });

  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final EdgeInsetsGeometry? padding;
  final bool resizeToAvoidBottomInset;
  final Widget? floatingActionButton;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.hideKeyboard(),
      child: Scaffold(
        appBar: appBar,
        backgroundColor: backgroundColor ?? Colors.white,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        body: SafeArea(
          child: Padding(
            padding: padding ?? _contentPadding,
            child: child,
          ),
        ),
      ),
    );
  }
}

// TODO: Left for probable future usage
class AppScaffoldWithBottomBar extends StatelessWidget {
  const AppScaffoldWithBottomBar({
    super.key,
    required this.child,
    this.appBar,
    this.padding,
    this.resizeToAvoidBottomInset = false,
  });

  final Widget child;
  final PreferredSizeWidget? appBar;
  final EdgeInsetsGeometry? padding;
  final bool resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: appBar,
      // bottomNavigationBar: BlocBuilder<SessionCacheCubit, SessionCacheState>(
      //   buildWhen: (prev, current) => prev.user != current.user || prev.user?.role != current.user?.role,
      //   builder: (_, state) => state.user.isNotNull ? AppBottomBar(state: state) : const SizedBox.shrink(),
      // ),
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      padding: padding,
      child: child,
    );
  }
}
