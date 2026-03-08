import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/category.dart';
import 'package:widget_forge_project/ui/widgets/item_category_screen/item_category_description_card.dart';
import 'package:widget_forge_project/ui/widgets/item_category_screen/item_type_button.dart';
import 'package:widget_forge_project/ui/theme/app_decorations.dart';

/* Todo: Update the AppBar and remove the origin AppBar because is too ugly,
*   add a manual button to return to the home screen.
* */

class ItemCategoryScreen extends StatelessWidget {
  const ItemCategoryScreen({super.key, required this.category});

  final ItemCategory category; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.name), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: AppDecorations.paddingScreenDefault,
          child: Column(
            spacing: 25,
            children: [
              ItemCategoryDescriptionCard(
                name: category.name,
                description: category.description,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: category.types.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 25),
                  itemBuilder: (context, index) {
                    return ItemTypeButton(type: category.types[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
