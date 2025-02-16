import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

final kColorScheme =
    ColorScheme.fromSeed(seedColor: AppColors.mainSeedColor);

final kColorDarkScheme =
    ColorScheme.fromSeed(seedColor: AppColors.darkModeSeedColor);

final theme = ThemeData(
  fontFamily: 'Roboto',
  colorScheme: kColorScheme,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    shape: CircleBorder(),
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  colorScheme: kColorScheme,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    shape: CircleBorder(),
  ),
);
