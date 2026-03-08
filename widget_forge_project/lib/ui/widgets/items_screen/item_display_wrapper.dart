import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/display/button_display.dart';
import 'package:widget_forge_project/data/entities/item.dart';

class ItemDisplayWrapper extends StatelessWidget {
  final Item item;
  const ItemDisplayWrapper({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    if (item is ButtonItem) {
      final buttonItem = item as ButtonItem;
      return ButtonDisplayerCard(
        buttonName: buttonItem.itemName,
        buttonDescription: buttonItem.description,
        buttonController: buttonItem.buttonController,
        buttonWidget: item,
      );
    }
    
    // Fallback if not specifically handled
    return item;
  }
}
