import 'package:flutter/material.dart';

import 'package:fintech_app/core/theme/theme.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    fontFamily: "Rubik",
    textTheme: AppTypography.textTheme,
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: lightColorScheme.surface,
    inputDecorationTheme: inputTheme(),
    filledButtonTheme: filledButtonTheme(),
    textSelectionTheme: textSelectionTheme(),
    chipTheme: chipTheme(),
    dividerTheme: dividerTheme(),
    textButtonTheme: textButtonTheme(),
    iconButtonTheme: iconButtonTheme(),
    appBarTheme: appBarTheme(),
  );
}