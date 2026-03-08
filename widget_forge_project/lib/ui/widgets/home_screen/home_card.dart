import 'package:flutter/material.dart';
import 'package:widget_forge_project/ui/theme/app_decorations.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({super.key});

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
              'Widget Forge App',
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w700
              ),
            ),
            Text(
              'Escolha uma categoria de widgets',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
      ),
    );
  }
}
