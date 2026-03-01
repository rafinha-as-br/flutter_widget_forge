import 'package:flutter/material.dart';

class WidgetCategoriesGrid extends StatelessWidget {
  const WidgetCategoriesGrid({super.key, required this.buttonsList});

  final List<Widget> buttonsList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: buttonsList.length,
      itemBuilder: (context, index) {
        final button = buttonsList[index];
        return button;
      },
    );
  }
}
