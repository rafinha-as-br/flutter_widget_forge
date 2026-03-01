/* this screen is responsible for showing the category of a specific widget*/

import 'package:flutter/material.dart';
import 'package:widget_forge_project/ui/widgets/widget_category_screen/widget_category_description_card.dart';

import '../widgets/widget_category_screen/widget_type_button.dart';

class WidgetCategoryScreen extends StatelessWidget {
  const WidgetCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categoria: Buttons'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          spacing: 25,
          children: [

            WidgetCategoryDescriptionCard(
                name: 'Buttons',
                description: 'No Flutter, Buttons são widgets interativos responsáveis por disparar ações a partir de eventos do usuário'
            ),

            WidgetTypeButton(
                text: 'Solid button',
                icon: Icons.smart_button,
                imagePath: 'assets/images/buttons_background.jpg'
            )


          ],
        ),
      ),
    );
  }
}



