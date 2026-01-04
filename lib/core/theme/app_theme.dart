import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      background: AppColors.background,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      elevation: 0,
      surfaceTintColor: AppColors.transparent,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: AppColors.textPrimary),
      titleLarge: TextStyle(
        color: AppColors.textPrimary,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
