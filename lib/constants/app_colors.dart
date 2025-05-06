import 'package:flutter/material.dart';

class AppColors {
  // Core colors from your request
  static const Color primary = Color(0xFFD99543);  // Warm amber (main bg)
  // static const Color primaryCopy = Color(0xFFD6A457);  // Warm amber (main bg)
  static const Color secondary = Color(0xFF8C633F);  // Mocha brown
  static const Color tertiary = Color(0xFFD9C3B0);  // Cream beige
  static const Color darkAccent = Color(0xFF401B0E);  // Deep chocolate
  static const Color mediumAccent = Color(0xFF733620);  // Rustic red-brown

  // Generated harmonious shades
  static const Color primaryLight = Color(0xFFE8B575);
  static const Color primaryLighter = Color(0xFFF5D9B5);
  static const Color primaryDark = Color(0xFFB27736);
  static const Color primaryDarker = Color(0xFF8C5A28);

  static const Color secondaryLight = Color(0xFFA88463);
  static const Color secondaryDark = Color(0xFF6F4E32);

  // Neutrals derived from your palette
  static const Color neutralLight = Color(0xFFEFE5DC);
  static const Color neutral = Color(0xFFD9C3B0);
  static const Color neutralDark = Color(0xFFB8A897);

  // Semantic colors
  static const Color success = Color(0xFF5A8C5A);
  static const Color error = Color(0xFFC45656);
  static const Color warning = Color(0xFFD9A343);
  static const Color info = Color(0xFF5A7D8C);

  // Text colors
  static const Color textOnLight = Color(0xFF401B0E);
  static const Color textOnDark = Color(0xFFEFE5DC);
  static const Color textDisabled = Color(0xFFB8A897);

  // Background variants
  static const Color bgSecondary = Color(0xFFEFE5DC);
  static const Color bgDark = Color(0xFF2A1A10);
  static const Color bgSurface = Color(0xFFFFFFFF);

  // Borders
  static const Color borderLight = Color(0xFFD9C3B0);
  static const Color borderDark = Color(0xFF8C633F);

  // Interactive states
  static const Color primaryHover = Color(0xFFE8A75A);
  static const Color primaryPressed = Color(0xFFB27736);
  static const Color secondaryHover = Color(0xFF9D7552);
}

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.primary,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.bgSurface,
      error: AppColors.error,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: AppColors.textOnLight),
      bodyLarge: TextStyle(color: AppColors.textOnLight),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.textOnLight,
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    primaryColor: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.bgDark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryLight,
      secondary: AppColors.secondaryLight,
      surface: AppColors.darkAccent,
      error: AppColors.error,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: AppColors.textOnDark),
      bodyLarge: TextStyle(color: AppColors.textOnDark),
    ),
  );
}