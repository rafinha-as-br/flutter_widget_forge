import 'package:flutter/material.dart';
import 'package:widget_forge_project/app/app_routes.dart';

class WidgetForgeApp extends StatelessWidget {
  const WidgetForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Forge App',
      initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: (route) => AppRoutes.fromRoute(route.name),

    );
  }
}
