import 'package:flutter/material.dart';
import 'package:fintech_app/core/theme/theme.dart';

InputDecorationTheme inputTheme() {
  return InputDecorationTheme(
    filled: true,
    fillColor: AppColors.gray100,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    isDense: true,
    alignLabelWithHint: true,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: AppColors.gray100)
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: AppColors.gray500)
    ),
    hintStyle: TextStyle(color: AppColors.gray500),
    labelStyle: TextStyle(color: AppColors.gray500),
    prefixIconColor: AppColors.gray700,
    suffixIconColor: AppColors.gray700,
  );
}
