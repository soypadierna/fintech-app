import 'package:flutter/material.dart';

import 'package:fintech_app/core/theme/theme.dart';

ChipThemeData chipTheme(){
  return ChipThemeData(
    backgroundColor: AppColors.white,
    brightness: Brightness.light,
    labelStyle: TextStyle(color: AppColors.gray700),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(
        color: AppColors.gray200,
        width: 1,
      ),
    ),
  );
}