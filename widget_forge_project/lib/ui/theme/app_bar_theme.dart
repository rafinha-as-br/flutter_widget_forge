import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppAppBarTheme {
  AppAppBarTheme._();

  static const AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.onPrimary,
    centerTitle: true,
    elevation: 0,
  );
}
