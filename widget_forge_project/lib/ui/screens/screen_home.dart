import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/widget_menu.dart';
import 'package:widget_forge_project/ui/widgets/home_screen/home_card.dart';
import 'package:widget_forge_project/ui/widgets/home_screen/widget_categories_grid.dart';

import '../widgets/home_screen/widget_categories_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          spacing: 25,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            HomeScreenCard(),

            Expanded(
              child: WidgetCategoriesGrid(),
            )

          ],
        ),
      ),
    );
  }
}



