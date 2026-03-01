/* this screen is responsible for showing the category of a specific widget*/

import 'package:flutter/material.dart';

class WidgetCategoryScreen extends StatelessWidget {
  const WidgetCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Widget category screen')
        ],
      ),
    );
  }
}
