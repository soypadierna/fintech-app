import 'package:flutter/material.dart';

AppBarThemeData appBarTheme() {
  //TODO: Deberia de cambiar los colores por los de app colors?
  return AppBarThemeData(
    backgroundColor: Colors.transparent,
    titleSpacing: 24,
    titleTextStyle: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    actionsPadding: EdgeInsets.only(right: 24),
  );
}
