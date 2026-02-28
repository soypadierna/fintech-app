import 'package:flutter/material.dart';

class AppColors {
  //TODO: Cambiar nombre de color
static const Color primary = Color(0xFF8A73FE);     
static const Color secondary = Color(0xFFBCD801);   
static const Color background = Color(0xFF100A28);  
static const Color surface = Color(0xFF190F59);      
static const Color onPrimary = Colors.white;        
static const Color onBackground = Colors.white70;   
static const Color error = Color(0xFFEF4444);
static const Color success = Color(0xFF22C55E);
static const Color warning = Color(0xFFF59E0B);

static const Color white = Color(0xFFFFFFFF); 

static const Color gray100 = Color(0xFFF5F5F5);
static const Color gray200 = Color(0xFFE2E2E2);
static const Color gray300 = Color(0xFFD4D4D4);
static const Color gray500 = Color(0xFF9E9E9E);
static const Color gray700 = Color(0xFF616161);
static const Color gray900 = Color(0xFF212121);
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.primary,
  onPrimary: AppColors.onPrimary,
  secondary: AppColors.secondary,
  onSecondary: Colors.black,
  surface: AppColors.gray100,
  onSurface: AppColors.gray900,
  error: AppColors.error,
  onError: Colors.white,
);
