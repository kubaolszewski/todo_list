import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      fontSizeResolver: (fontSize, instance) => FontSizeResolvers.radius(fontSize, instance),
      rebuildFactor: (_, __) => false,
      child: MaterialApp.router(
          title: 'Notely Todo List',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          routerConfig: Modular.routerConfig,
          theme: ThemeData(fontFamily: 'Roboto'),
          builder: (context, child) {
            return ScrollConfiguration(
              behavior: _GlowEffectBehavior(),
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  highContrast: false,
                  boldText: false,
                  textScaler: const TextScaler.linear(1.0),
                ),
                child: child!,
              ),
            );
          }),
    );
  }
}

class _GlowEffectBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
