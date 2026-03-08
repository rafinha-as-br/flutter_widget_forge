import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/display/button_display.dart';
import 'package:widget_forge_project/data/entities/item.dart';
import 'package:widget_forge_project/data/entities/type.dart';
import 'package:widget_forge_project/ui/widgets/items_screen/sliver_app_bar.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key, required this.itemType});

  final ItemType itemType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ItemsScreenAppBar(type: itemType),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final item = itemType.items[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ItemDisplayWrapper(item: item),
                );
              },
              childCount: itemType.items.length,
            ),
          )
        ],
      ),
    );
  }
}

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
