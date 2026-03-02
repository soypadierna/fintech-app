import 'package:flutter/material.dart';

import 'package:fintech_app/core/theme/theme.dart';

IconButtonThemeData iconButtonTheme(){
  return IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.gray100),
      foregroundColor: WidgetStatePropertyAll(AppColors.gray700),
    ),
  );
}