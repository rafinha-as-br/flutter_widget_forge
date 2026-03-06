/* this screen is responsible for showing the widgets from a selected
* widget category */

import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/item.dart';
import 'package:widget_forge_project/ui/widgets/widgets_screen/sliver_app_bar.dart';

/// Todo: Need to do all the things on the future updates list

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({super.key, required this.itemsList});

  final List<Item> itemsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          WidgetsScreenAppBar(),

          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index){
                    final item = itemsList[index];

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: item,
                    );
                  },
                  childCount: itemsList.length,
              ),
          )

        ],
      ),
    );
  }
}

/* future updates:
*
* - Need to create a widget that checks what Category of Item is and return the
* Specific card for it
* - Rename the screens from widget to items
*
* */
