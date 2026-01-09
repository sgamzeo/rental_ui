import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: AppColors.background,

    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      background: AppColors.background,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      elevation: 0,
      surfaceTintColor: AppColors.transparent,
    ),

    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      bodyMedium: GoogleFonts.poppins(
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: GoogleFonts.poppins(
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w600, // SF Pro Display hissi
      ),
    ),
  );
}
