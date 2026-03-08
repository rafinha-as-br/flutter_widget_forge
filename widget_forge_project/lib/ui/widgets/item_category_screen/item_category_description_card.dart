import 'package:flutter/material.dart';
import 'package:widget_forge_project/ui/theme/app_decorations.dart';

class ItemCategoryDescriptionCard extends StatelessWidget {
  const ItemCategoryDescriptionCard({super.key, required this.name, required this.description});

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: AppDecorations.borderRadiusLarge
      ),
      child: Padding(
        padding: AppDecorations.paddingCard,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w700
              ),
            ),
            Text(
              description,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
              ),
            ),
            Text('Saiba mais...', style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
