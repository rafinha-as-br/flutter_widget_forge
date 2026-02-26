import 'package:flutter/material.dart';
import 'package:widget_forge_project/screens/screen_home.dart';

class WidgetForgeApp extends StatelessWidget {
  const WidgetForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Forge App',
      home: const HomeScreen(),
    );
  }
}
