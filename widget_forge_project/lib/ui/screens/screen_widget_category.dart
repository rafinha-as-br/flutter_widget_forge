/* this screen is responsible for showing the category of a specific widget*/

/// Todo: Need to apply all the things from the updates list
/// Todo: Change the name of this file and widget to a cohesive to the entity
///

import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/category.dart';
import 'package:widget_forge_project/ui/widgets/widget_category_screen/widget_category_description_card.dart';

import '../widgets/widget_category_screen/widget_type_button.dart';

class WidgetCategoryScreen extends StatelessWidget {
  const WidgetCategoryScreen({super.key, required this.category});

  final ItemCategory category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          spacing: 25,
          children: [

            WidgetCategoryDescriptionCard(
                name: category.name,
                description: category.description
            ),

            WidgetTypeButton(type: category.types[0])


          ],
        ),
      ),
    );
  }
}


/* Future Updates:
* - Replace the Column for a CustomScrollView
* - Create a customAppBar (like the screen_widgets appBar)
* - call the List of CategoryItem on the constructor
*
*
* */



