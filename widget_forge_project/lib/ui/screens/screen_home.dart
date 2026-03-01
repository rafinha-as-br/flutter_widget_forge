import 'package:flutter/material.dart';
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
              child: WidgetCategoriesGrid(buttonsList: _buttonsList),
            )

          ],
        ),
      ),
    );
  }
}


final List<WidgetCategoryButton> _buttonsList = [
  WidgetCategoryButton(
      text: 'Cards',
      icon: Icons.credit_card_rounded,
    imagePath: 'assets/images/cards_background.jpg',
  ),

  WidgetCategoryButton(
      text: 'Buttons',
      icon: Icons.smart_button,
    imagePath: 'assets/images/buttons_background.jpg',
  ),


];


