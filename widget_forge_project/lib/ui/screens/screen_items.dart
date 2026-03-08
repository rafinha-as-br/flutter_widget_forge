import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/type.dart';
import 'package:widget_forge_project/ui/widgets/items_screen/sliver_app_bar.dart';
import 'package:widget_forge_project/ui/widgets/items_screen/item_display_wrapper.dart';
import 'package:widget_forge_project/ui/theme/app_decorations.dart';

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
                  padding: AppDecorations.paddingDefault,
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
