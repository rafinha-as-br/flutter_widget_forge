import 'package:flutter/material.dart';

class AppThemeController {
  // Singleton pattern for simple global access in the MVP
  static final AppThemeController instance = AppThemeController._();
  AppThemeController._();

  // The ValueNotifier holding the current ThemeMode
  final ValueNotifier<ThemeMode> themeModeNotifier = ValueNotifier(ThemeMode.system);

  void toggleThemeMode() {
    if (themeModeNotifier.value == ThemeMode.light) {
      themeModeNotifier.value = ThemeMode.dark;
    } else {
      themeModeNotifier.value = ThemeMode.light;
    }
  }

  void setThemeMode(ThemeMode mode) {
    themeModeNotifier.value = mode;
  }
}
