import 'package:flutter/material.dart';

TextButtonThemeData textButtonTheme(){
  return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
      ),
    );

}