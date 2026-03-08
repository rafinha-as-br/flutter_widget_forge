import 'package:flutter/material.dart';
import 'package:widget_forge_project/app/app_routes.dart';
import 'package:widget_forge_project/ui/theme/app_theme.dart';

class WidgetForgeApp extends StatelessWidget {
  const WidgetForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: AppThemeController.instance.themeModeNotifier,
      builder: (context, currentThemeMode, child) {
        return MaterialApp(
          title: 'Widget Forge App',
          themeMode: currentThemeMode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          initialRoute: AppRoutes.homeScreen,
          onGenerateRoute: (route) => AppRoutes.fromRoute(route),
        );
      },
    );
  }
}
