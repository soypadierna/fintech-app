import 'package:flutter/material.dart';

import 'package:fintech_app/core/theme/theme.dart';

TextSelectionThemeData textSelectionTheme() {
  return TextSelectionThemeData(
    cursorColor: AppColors.gray500,
    selectionColor: AppColors.gray200,
    selectionHandleColor: AppColors.gray500,
  );
}
