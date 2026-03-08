import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppColorScheme {
  AppColorScheme._();

  static const ColorScheme lightColorScheme = ColorScheme.light(
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
    surface: AppColors.surface,
    onSurface: AppColors.onSurface,
    error: AppColors.error,
    onError: AppColors.onError,
  );
}
