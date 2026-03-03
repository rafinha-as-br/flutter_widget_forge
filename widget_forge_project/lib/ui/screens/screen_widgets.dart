/* this screen is responsible for showing the widgets from a selected
* widget category */

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widget_forge_project/ui/widgets/widgets_screen/show_widget_cards/show_button_card.dart';
import 'package:widget_forge_project/ui/widgets/widgets_screen/show_widget_cards/show_widget_card.dart';
import 'package:widget_forge_project/ui/widgets/widgets_screen/sliver_app_bar.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          WidgetsScreenAppBar(),

          /// Todo: Place the SliverList here with the ShowWidgetCard()
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ShowButtonCard(),
                    );
                  },
                  childCount: 2,
              ),
          )

        ],
      ),
    );
  }
}

