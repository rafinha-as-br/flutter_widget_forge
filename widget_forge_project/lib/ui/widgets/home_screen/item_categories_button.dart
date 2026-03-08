import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/category.dart';

import '../../../app/app_routes.dart';

class ItemCategoryButton extends StatelessWidget {
  const ItemCategoryButton({super.key, required this.category,});

  final ItemCategory category;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(
            AppRoutes.itemCategoryScreen,
          arguments: category
        );
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
            image: AssetImage(category.backgroundImage ?? ''),
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
                  category.categoryIcon,
                  size: 50,
                  color: Colors.white,
                ),
                Text(
                  category.name,
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
