import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_color_scheme.dart';
import 'app_bar_theme.dart';
import 'app_card_theme.dart';
export 'app_theme_controller.dart'; 

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorScheme.lightColorScheme,
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: AppAppBarTheme.lightAppBarTheme,
      cardTheme: AppCardTheme.lightCardTheme,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        surface: Colors.grey[900]!,
        onSurface: Colors.white,
        error: AppColors.error,
        onError: AppColors.onError,
      ),
      scaffoldBackgroundColor: Colors.black87,
      appBarTheme: AppAppBarTheme.lightAppBarTheme.copyWith(
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
      ),
      cardTheme: AppCardTheme.lightCardTheme.copyWith(
        color: Colors.grey[850],
      ),
    );
  }
}
