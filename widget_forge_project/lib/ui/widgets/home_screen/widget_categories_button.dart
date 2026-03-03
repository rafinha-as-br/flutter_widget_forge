import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../app/app_routes.dart';

class WidgetCategoryButton extends StatelessWidget {
  const WidgetCategoryButton({
    super.key,
    required this.text,
    required this.icon,
    required this.imagePath,
  });

  final String text;
  final IconData icon;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(AppRoutes.widgetCategoryScreen);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: AlignmentGeometry.center,
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 1.5,
                    sigmaY: 1.5,
                  ),
                  child: Container(
                    color: Colors.black.withAlpha(100),
                  ),
                ),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [


                Icon(
                  icon,
                  size: 70, /// todo: lower the size a bit...
                  color: Colors.white,
                ),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),
                  textAlign: TextAlign.center,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
