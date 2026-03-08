import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/widget_menu.dart';
import 'package:widget_forge_project/ui/widgets/home_screen/item_categories_button.dart';

class ItemCategoriesGrid extends StatelessWidget {
  const ItemCategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        final button = ItemCategoryButton(category: category);

        return button;
      },
    );
  }
}
